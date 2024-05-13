import 'package:app/config/design/mocks.dart';
import 'package:flutter/material.dart';
import 'package:weinds/weinds.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(247, 247, 247, 1),
        body: Column(
          children: <Widget>[GroupAppBar(), GroupBody()],
        ));
  }
}

class GroupBody extends StatelessWidget {
  const GroupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverList.separated(
              itemCount: Mocks.listPrimaryButtons.length,
              itemBuilder: (_, index) => Column(
                    children: <Widget>[
                      index == 0
                          ? Container(
                              width: double.infinity,
                              height: 30,
                              color: WeinDsColors.light,
                              child: const Center(
                                child: Text(
                                  'Botón Primario Large',
                                  style: TextStyle(
                                    fontFamily: 'Cocogoose',
                                    color: WeinDsColors.strongPrimary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                      Mocks.listPrimaryButtons[index],
                    ],
                  ),
              separatorBuilder: (_, index) => Container(
                    width: double.infinity,
                    height: 30,
                    color: WeinDsColors.light,
                    child: Center(
                      child: Text(
                        index == 0
                            ? 'Botón Primario Medium'
                            : 'Botón Primario Small',
                        style: const TextStyle(
                          fontFamily: 'Cocogoose',
                          color: WeinDsColors.strongPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  )),
          SliverList.separated(
              itemCount: Mocks.listSecundaryButtons.length,
              itemBuilder: (_, index) => Column(
                    children: <Widget>[
                      index == 0
                          ? Container(
                              width: double.infinity,
                              height: 30,
                              color: WeinDsColors.light,
                              child: const Center(
                                child: Text(
                                  'Botón Secundario Large',
                                  style: TextStyle(
                                    fontFamily: 'Cocogoose',
                                    color: WeinDsColors.strongPrimary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                      Mocks.listSecundaryButtons[index],
                    ],
                  ),
              separatorBuilder: (_, index) => Container(
                    width: double.infinity,
                    height: 30,
                    color: WeinDsColors.light,
                    child: Center(
                      child: Text(
                        index == 0
                            ? 'Botón Secundario Medium'
                            : 'Botón Secundario Small',
                        style: const TextStyle(
                          fontFamily: 'Cocogoose',
                          color: WeinDsColors.strongPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}

class GroupAppBar extends StatelessWidget {
  const GroupAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      color: WeinDsColors.strongSecondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 60, left: 20),
                child: Icon(
                  Icons.undo,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, 27, 0),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 45,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28),
                          topRight: Radius.circular(28))),
                ),
                Container(
                  transform: Matrix4.translationValues(0, -20, 0),
                  height: 53,
                  width: 270,
                  decoration: BoxDecoration(
                      color: WeinDsColors.statusSuccess,
                      borderRadius: BorderRadius.circular(24)),
                  child: const Center(
                    child: Text(
                      'Inventario Botones',
                      style: TextStyle(
                        fontFamily: 'Cocogoose',
                        color: WeinDsColors.strongPrimary,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
