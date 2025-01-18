import 'package:flutter/material.dart';

void main() {
  runApp(MyResponsiveApp());
}

class MyResponsiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ResponsiveLayout(),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Layout para telas pequenas (celulares)
          return SmallScreenLayout();
        } else if (constraints.maxWidth < 1200) {
          // Layout para telas médias (tablets)
          return MediumScreenLayout();
        } else {
          // Layout para telas grandes (desktop)
          return LargeScreenLayout();
        }
      },
    );
  }
}

// Layout para telas pequenas
class SmallScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LayoutSuperior(),
        Expanded(
          child: Center(
            child: MeuAplicativo(),
          ),
        ),
        LayoutInferior(),
      ],
    );
  }
}

// Layout para telas médias
class MediumScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LayoutSuperior(),
        Expanded(
          child: Center(
            child: MeuAplicativo(),
          ),
        ),
        LayoutInferior(),
      ],
    );
  }
}

// Layout para telas grandes
class LargeScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LayoutSuperior(),
        Expanded(
          child: Center(
            child: MeuAplicativo(),
          ),
        ),
        LayoutInferior(),
      ],
    );
  }
}

// Widget do layout superior
class LayoutSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Layout Superior',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

// Widget do centro (Meu Aplicativo)
class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.green,
      child: const Text(
        'Meu Aplicativo',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

// Widget do layout inferior
class LayoutInferior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey,
      child: const Center(
        child: Text(
          'Layout Inferior',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
