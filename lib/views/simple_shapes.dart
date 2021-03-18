import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ar_sample/models/ui_model.dart';
import 'package:flutter_ar_sample/models/ar_core_elements.dart';

class SimpleShapes extends StatefulWidget {
  @override
  _SimpleShapesState createState() => _SimpleShapesState();
}

class _SimpleShapesState extends State<SimpleShapes> {
  ArCoreController arController;
  ArCoreElements arCoreElements = ArCoreElements();

  @override
  Widget build(BuildContext context) => UiModel().getScreen(
      screen: arCoreElements.getArCoreView(
          onArCoreViewCreated: _onArCoreViewCreated
      )
  );

  ArCoreCube get cube => arCoreElements.getCube(
      material: arCoreElements.getElementMaterial(
        color: Colors.red,
        metallic: 1.0,
        reflectance: 0.1,
      ),
      edgeSize: 0.4
  );

  ArCoreCylinder get cylinder => arCoreElements.getCylinder(
      material: arCoreElements.getElementMaterial(color: Colors.blue, metallic: 1),
      radius: 0.4,
      height: 0.3
  );

  ArCoreSphere get sphere => arCoreElements.getSphere(
      material: arCoreElements.getElementMaterial(color: Colors.green, metallic: 1, reflectance: 1),
      radius: 0.4
  );

  _onArCoreViewCreated(ArCoreController controller) async {
    arController = controller;

    controller.addArCoreNode(
        ArCoreNode(
            shape: cube,
            position: arCoreElements.getVector3(x: -1, y: 0, z: 0)///Equal to:Left
        )
    );

    controller.addArCoreNode(
        ArCoreNode(
            shape: cylinder,
            position: arCoreElements.getVector3(x: 1, y: 0, z: 0)///Equal to:Right
        )
    );

    controller.addArCoreNode(
        ArCoreNode(
            shape: sphere,
            position: arCoreElements.getVector3(x: 0, y: 0, z: -1)///Equal to:Forward
        )
    );
  }

  @override
  void dispose() {
    arController.dispose();
    super.dispose();
  }
}
