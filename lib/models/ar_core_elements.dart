import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ArCoreElements {

  ArCoreView getArCoreView({ArCoreViewType type, Function onArCoreViewCreated, bool enableTapRecognizer, bool enableUpdateListener})=>ArCoreView(
    onArCoreViewCreated: onArCoreViewCreated,
    enableTapRecognizer: enableTapRecognizer,
    enableUpdateListener: enableUpdateListener,
    type: type,
  );

  ArCoreMaterial getElementMaterial({Color color, double metallic, double reflectance, double roughness, dynamic textureBytes}) => ArCoreMaterial(
      color: color,
      metallic: metallic,
      reflectance: reflectance,
      roughness: roughness,
      textureBytes: textureBytes
  );

  ArCoreCylinder getCylinder({ArCoreMaterial material, double height, double radius})=>ArCoreCylinder(
    materials: [material],
    height: height,
    radius: radius
  );

  ArCoreSphere getSphere({ArCoreMaterial material, double radius})=>ArCoreSphere(
    materials: [material],
    radius: radius
  );

  ArCoreCube getCube({ArCoreMaterial material, double edgeSize})=>ArCoreCube(
    materials: [material],
    size: getVector3(x: edgeSize, z: edgeSize, y: edgeSize)
  );

  vector.Vector3 getVector3({double x, double y, double z})=>vector.Vector3(x,y,z);
  ///I am not too sure but, for position you can look at the link: https://developers.google.com/sceneform/reference/com/google/ar/sceneform/math/Vector3
}
