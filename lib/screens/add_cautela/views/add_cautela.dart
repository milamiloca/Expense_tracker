import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../../../app_view.dart';

class AddCautela extends StatefulWidget {
  const AddCautela({super.key});

  @override
  State<AddCautela> createState() => _AddCautelaState();
}

class _AddCautelaState extends State<AddCautela> {
  TextEditingController quantidadeController = TextEditingController();
  TextEditingController categoriaController = TextEditingController();
  TextEditingController servidorController = TextEditingController();
  TextEditingController dataController = TextEditingController();
  TextEditingController tamanhoController = TextEditingController();
  DateTime selectDate = DateTime.now();

  @override
  void initState() {
    dataController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Cores.primaria.toColor(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Adicionar Cautela',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  controller: quantidadeController,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(
                        FontAwesomeIcons.arrowUpFromGroundWater,
                        size: 16,
                        color: Colors.grey,
                      ),
                      hintText: 'Quantidade',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: categoriaController,
                textAlignVertical: TextAlignVertical.center,
                readOnly: true, // para aparecer uma lista de categoria abaixo
                onTap: () {},
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      FontAwesomeIcons.list,
                      size: 16,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                        //criar categoria
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (ctx) {
                                bool isExpended = false;
                                return StatefulBuilder(
                                    builder: (context, setState) {
                                  return AlertDialog(
                                    title: const Text('Create a Category'),
                                    //cria uma tela a frente
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        TextFormField(
                                          //controller: dateController,
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                              isDense: true,
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: 'Name',
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide.none)),
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        TextFormField(
                                          //controller: dateController,
                                          onTap: () {
                                            setState(() {
                                              isExpended = !isExpended;
                                            });
                                          },
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          readOnly: true,
                                          decoration: const InputDecoration(
                                              isDense: true,
                                              filled: true,
                                              suffixIcon: Icon(
                                                  CupertinoIcons.chevron_down,
                                                  size: 12),
                                              fillColor: Colors.white,
                                              hintText: 'Icon',
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                          top: Radius.circular(
                                                              12)),
                                                  borderSide: BorderSide.none)),
                                        ),
                                        isExpended
                                            ? Container(
                                                width: double.infinity,
                                                height: 200,
                                                decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            bottom:
                                                                Radius.circular(
                                                                    12))),
                                              )
                                            : Container(),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        TextFormField(
                                          //controller: dateController,
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                              isDense: true,
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: 'Color',
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  borderSide: BorderSide.none)),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                              });
                        },
                        icon: const Icon(
                          FontAwesomeIcons.plus,
                          size: 16,
                          color: Colors.grey,
                        )),
                    hintText: 'Categoria',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: tamanhoController,
                textAlignVertical: TextAlignVertical.center,
                readOnly: true, // para aparecer uma lista de categoria abaixo
                onTap: () {},
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      FontAwesomeIcons.pen,
                      size: 16,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.plus,
                          size: 16,
                          color: Colors.grey,
                        )),
                    hintText: 'Tamanho',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: servidorController,
                textAlignVertical: TextAlignVertical.center,
                readOnly: true, // para aparecer uma lista de categoria abaixo
                onTap: () {},
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      FontAwesomeIcons.person,
                      size: 16,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.plus,
                          size: 16,
                          color: Colors.grey,
                        )),
                    hintText: 'Nome do Servidor',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: dataController,
                textAlignVertical: TextAlignVertical.center,
                readOnly: true,
                onTap: () async {
                  DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: selectDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365)));

                  if (newDate != null) {
                    setState(() {
                      dataController.text =
                          DateFormat('dd/MM/yyyy').format(newDate);
                      selectDate = newDate;
                    });
                  }
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      FontAwesomeIcons.clock,
                      size: 16,
                      color: Colors.grey,
                    ),
                    hintText: 'Data',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: kToolbarHeight,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
