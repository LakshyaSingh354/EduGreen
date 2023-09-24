import 'package:flutter/material.dart';

class CentralDashboardPage extends StatefulWidget {
  const CentralDashboardPage({super.key});

  @override
  State<CentralDashboardPage> createState() => _CentralDashboardPageState();
}

class _CentralDashboardPageState extends State<CentralDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03493C),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/icon.png',
                          width: 174,
                          height: 145,
                          fit: BoxFit.cover,
                          ),
                        Text('Dashboard',
                          style: TextStyle(
                            fontFamily: 'Glass Antiqua',
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  // Generated code for this Text Widget...
                   children:[ Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 90, 0),
                      child: Text(
                        'ESG Performance',
                        style: TextStyle(
                              fontFamily: 'Inika',
                              color: Color(0xFF0B9D9D),
                              fontSize: 30,
                            ),
                      ),
                    ),
                    // Generated code for this Column Widget...
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/Save-Energy-Free-Download-PNG 1.png',
                                    width: 60,
                                    height: 57,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.00, -1.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                    child: Text(
                                      'Energy Saving',
                                      style: TextStyle(
                                        color: Colors.white,
                                            fontFamily: 'Glass Antiqua',
                                            fontSize: 25,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(90, 0, 0, 0),
                                  child: Text(
                                    '→',
                                    style: TextStyle(
                                          color: Color(0xFF129B87),
                                          fontSize: 30,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/graph_prototype.png',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 330,
                              child: Divider(
                                thickness: 1,
                                indent: 30,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/waste_reduction.png',
                                    width: 60,
                                    height: 57,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.00, -1.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                    child: Text(
                                      'Waste Reduction',
                                      style: TextStyle(
                                        color: Colors.white,
                                            fontFamily: 'Glass Antiqua',
                                            fontSize: 25,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
                                  child: Text(
                                    '→',
                                    style: TextStyle(
                                          
                                          color: Color(0xFF129B87),
                                          fontSize: 30,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 330,
                              child: Divider(
                                thickness: 1,
                                indent: 30,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/graph_prototype.png',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/community_engagement.png',
                                    width: 60,
                                    height: 57,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.00, -1.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                    child: Text(
                                      'Community Engagement',
                                      style: TextStyle(
                                        color: Colors.white,
                                            fontFamily: 'Glass Antiqua',
                                            fontSize: 25,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                  child: Text(
                                    '→',
                                    style: TextStyle(
                                          color: Color(0xFF129B87),
                                          fontSize: 30,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 330,
                              child: Divider(
                                thickness: 1,
                                indent: 30,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/graph_prototype.png',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/governance.png',
                                    width: 60,
                                    height: 57,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.00, -1.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                    child: Text(
                                      'Governance',
                                      style: TextStyle(
                                        color: Colors.white,
                                            fontFamily: 'Glass Antiqua',
                                            fontSize: 29,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(110, 0, 0, 0),
                                  child: Text(
                                    '→',
                                    style: TextStyle(
                                          color: Color(0xFF129B87),
                                          fontSize: 30,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 330,
                              child: Divider(
                                thickness: 1,
                                indent: 30,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/graph_prototype.png',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                      
                    )

                   ]
                ),
            
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0,50,0,0),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/top_performer_prototype.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          ),
                      ),
                      Text('@alice1221',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text('Top Performer',
                          style: TextStyle(
                            color: Color(0xFF3AC8B3),
                            fontFamily: 'Glass Antiqua',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 100, 0),
                        child: Text('Key Achievments',
                          style: TextStyle(
                            color: Color(0xFF3AC8B3),
                            fontSize: 30,
                            fontFamily: 'Glass Antiqua'
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/cerificate_prototype.jpeg'),
                      )
                    ],
                  ),
                )
              ] 
            ),
          ),
          
        ],
      ),
      
    );
    
    
  }
}