import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child:
      controller: _scrollController,
      itemBuilder: (context, i) {

        if (i == myList.length) {
          print("myList.length");
          print(i);
          print(myList.length);
          print(maxLength);
          if(maxLength!=i) {
            maxLength = i;
            return CupertinoActivityIndicator();
          }else{
            maxLength = i;
            return null;
          }
        }
        else{
          return Column(
            children: <Widget>[
              if( i==0 )
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      left: 5,
                      right: 5,
                    ),
                    child: SplineDefault(
                      minamount,
                      maxamount,
                      list,
                      dates,
                      key,
                    ),
                  ),
                ),
              if(i>0)
                ListTile(
                  title: Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(
                              bottom: 15),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(15),
                              color:
                              const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(
                                      0x80000000),
                                ),
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 10,
                                      right: 10,
                                      left: 10,
                                      bottom: 15),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.only(
                                        topLeft: Radius
                                            .circular(
                                            15),
                                        bottomLeft: Radius
                                            .circular(
                                            15)),
                                    color: const Color(
                                        0xFF045f8c),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.only(top: 5),
                                    child:  Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.only(left: 5,right: 5,),
                                              child:
                                              AutoSizeText(
                                                day[i],
                                                maxLines: 1,
                                                style:
                                                TextStyle(
                                                  fontSize:
                                                  20,
                                                  fontWeight:
                                                  FontWeight
                                                      .w600,
                                                  color:
                                                  const Color(
                                                    0xffffffff,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(bottom: 2,right: 5),
                                              child: Column(
                                                children: <
                                                    Widget>[
                                                  Container(
                                                    child:
                                                    AutoSizeText(
                                                      month[i],
                                                      maxLines:
                                                      1,
                                                      style:
                                                      TextStyle(
                                                        fontSize: 14,
                                                        color:
                                                        const Color(0xffffffff),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child:
                                                    AutoSizeText(
                                                      year[i],
                                                      maxLines:
                                                      1,
                                                      style:
                                                      TextStyle(
                                                        fontSize: 14,
                                                        color:
                                                        const Color(0xffffffff),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(top: 2,),
                                          child: AutoSizeText(
                                            week[i],
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: const Color(
                                                  0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisSize:
                                    MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .center,
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.only(left: 5,),
                                        child: Column(
                                            children: <
                                                Widget>[
                                              Container(
                                                child: new SvgPicture
                                                    .asset(
                                                  'assets/icons/cash.svg',
                                                ),
                                                width: 25,
                                                height: 20,
                                              ),
                                              Container(
                                                padding: const EdgeInsets
                                                    .only(
                                                    left:
                                                    2),
                                                child: new SvgPicture
                                                    .asset(
                                                    'assets/icons/credit.svg'),
                                                width: 25,
                                                height: 25,
                                              ),
                                            ]),
                                      ),
                                      Container(
                                        child: Column(
                                            children: <
                                                Widget>[
                                              Container(
                                                padding: const EdgeInsets
                                                    .only(
                                                    left:
                                                    10),
                                                child:
                                                new AutoSizeText(
                                                  'Cash :',
                                                  maxLines:
                                                  1,
                                                  style:
                                                  TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                    color: const Color(
                                                        0xff14172c),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets
                                                    .only(
                                                    top: 12,
                                                    left:
                                                    7),
                                                child:
                                                new AutoSizeText(
                                                  'Credit:',
                                                  maxLines:
                                                  1,
                                                  style:
                                                  TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                    color: const Color(
                                                        0xff14172c),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                      Container(
                                        width: 100,
                                        padding:
                                        const EdgeInsets
                                            .only(
                                            right: 10),
                                        child: Column(
                                            children: <
                                                Widget>[
                                              Container(
                                                alignment:
                                                Alignment
                                                    .centerRight,
                                                child:
                                                AutoSizeText(
                                                  myList3[i],
                                                  maxLines:
                                                  1,
                                                  style:
                                                  TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                    color: const Color(
                                                        0xff14172c),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment:
                                                Alignment
                                                    .centerRight,
                                                padding: const EdgeInsets
                                                    .only(
                                                    top:
                                                    12),
                                                child:
                                                new AutoSizeText(
                                                  myList2[i],
                                                  maxLines:
                                                  1,
                                                  style:
                                                  TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                    color: const Color(
                                                        0xff14172c),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            right: 15,
                            child: Container(
                              padding:
                              const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                  left: 10,
                                  right: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(
                                    20),
                                color:
                                const Color(0xFF31b7f6),
                              ),
                              child: Row(
                                children: <Widget>[
                                  AutoSizeText(
                                    'Total :  ',
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(
                                            0xffffffff),
                                        fontWeight:
                                        FontWeight
                                            .w600),
                                  ),
                                  AutoSizeText(
                                    myList4[i],
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(
                                            0xffffffff),
                                        fontWeight:
                                        FontWeight
                                            .w700),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  onTap: () async {

                  },
                ),
            ],
          );
        }

      },
      itemCount: myList.length + 1,
    );
      
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

}
