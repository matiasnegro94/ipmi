/*INTRODUCCIÓN A LA PROGRAMACIÓN PARA MEDIOS INTERACTIVOS
 19 de Abril de 2024
 Comisión 3
 Negro, Matías Edgardo*/

PImage uzumaki;

void setup()
{
  size(800, 400);//Tamaño del sketch
  background(255, 100, 125);//Fondo rojo
  uzumaki = loadImage("uzumaki.png");/*Asignamos el archivo png a uzumaki*/
}

void draw()
{
  println(mouseX+","+mouseY);//Para que imprima las coordenadas del mouse en consola
  stroke(0, 0, 0);//

  //ESPIRAL FONDO SOMBRA
  strokeWeight(0);//Tamaño del trazo
  fill(0, 30, 40);//Color de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 215);
  vertex(763, 155);
  vertex(819, 147);
  vertex(800, 121);
  vertex(757, 126);
  vertex(711, 147);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 220);
  vertex(745, 100);
  vertex(820, 72);
  vertex(820, 40);
  vertex(753, 65);
  vertex(693, 100);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 220);
  vertex(708, 53);
  vertex(727, 26);
  vertex(759, 0);
  vertex(728, 0);
  vertex(685, 44);
  vertex(671, 67);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 220);
  vertex(627, 25);
  vertex(633, 5);
  vertex(652, -10);
  vertex(615, -10);
  vertex(590, 25);
  vertex(585, 35);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(620, 220);
  vertex(537, 31);
  vertex(530, 11);
  vertex(530, -10);
  vertex(505, -10);
  vertex(505, 30);
  vertex(515, 61);
  vertex(510, 115);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(620, 200);
  vertex(470, 65);
  vertex(452, 23);
  vertex(450, -20);
  vertex(425, -20);
  vertex(429, 19);
  vertex(447, 67);
  vertex(473, 109);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 220);
  vertex(428, 160);
  vertex(391, 120);
  vertex(392, 161);
  vertex(422, 188);
  vertex(459, 211);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 220);
  vertex(415, 250);
  vertex(389, 244);
  vertex(391, 275);
  vertex(425, 280);
  vertex(479, 264);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 220);
  vertex(442, 350);
  vertex(352, 389);
  vertex(352, 425);
  vertex(454, 371);
  vertex(530, 310);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(610, 200);
  vertex(509, 370);
  vertex(460, 415);
  vertex(520, 415);
  vertex(548, 380);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(620, 200);
  vertex(721, 366);
  vertex(738, 420);
  vertex(760, 420);
  vertex(755, 378);
  vertex(747, 352);
  vertex(715, 302);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(620, 200);
  vertex(774, 297);
  vertex(840, 372);
  vertex(840, 330);
  vertex(782, 273);
  vertex(727, 231);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 210);
  vertex(772, 223);
  vertex(820, 251);
  vertex(820, 216);
  vertex(775, 196);
  vertex(742, 192);
  endShape(CLOSE);//Fin de la forma

  //ESPIRAL FONDO
  strokeWeight(5);//Tamaño del trazo
  stroke(0, 50, 70);//Color del trazo
  fill(0, 65, 90);//Fondo de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(763, 140);
  vertex(819, 132);
  vertex(800, 106);
  vertex(757, 111);
  vertex(711, 132);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(745, 80);
  vertex(820, 52);
  vertex(820, 20);
  vertex(753, 45);
  vertex(693, 80);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(708, 33);
  vertex(749, -10);
  vertex(718, -10);
  vertex(685, 24);
  vertex(671, 47);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(622, 5);
  vertex(632, -10);
  vertex(595, -10);
  vertex(590, 5);
  vertex(585, 15);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(517, 11);
  vertex(510, -10);
  vertex(485, -10);
  vertex(485, 10);
  vertex(495, 41);
  vertex(490, 95);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(450, 65);
  vertex(432, 23);
  vertex(430, -20);
  vertex(405, -20);
  vertex(409, 19);
  vertex(427, 67);
  vertex(453, 109);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(428, 140);
  vertex(391, 100);
  vertex(392, 141);
  vertex(422, 168);
  vertex(459, 191);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(415, 230);
  vertex(389, 224);
  vertex(391, 255);
  vertex(425, 260);
  vertex(479, 244);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(442, 330);
  vertex(352, 369);
  vertex(352, 405);
  vertex(454, 351);
  vertex(530, 290);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(590, 200);
  vertex(509, 370);
  vertex(440, 415);
  vertex(500, 415);
  vertex(538, 380);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(701, 366);
  vertex(718, 420);
  vertex(740, 420);
  vertex(735, 378);
  vertex(727, 352);
  vertex(695, 302);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(754, 297);
  vertex(820, 372);
  vertex(820, 330);
  vertex(762, 273);
  vertex(707, 231);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(754, 297);
  vertex(820, 372);
  vertex(820, 330);
  vertex(762, 273);
  vertex(707, 231);
  endShape(CLOSE);//Fin de la forma

  beginShape();//Comienzo de la forma
  vertex(600, 200);
  vertex(772, 213);
  vertex(820, 241);
  vertex(820, 206);
  vertex(775, 186);
  vertex(742, 182);
  endShape(CLOSE);//Fin de la forma

  //CUELLO
  strokeWeight(5);//Tamaño del trazo
  stroke(0, 0, 0);//Color del trazo
  fill(255, 255, 255);//Fondo de la forma
  beginShape();//Comienzo de la forma
  vertex(562, 334);
  vertex(560, 373);
  vertex(540, 450);
  vertex(675, 450);
  vertex(655, 373);
  vertex(655, 334);
  endShape(CLOSE);//Fin de la forma

  //SOMBRA CUELLO
  strokeWeight(0);
  fill(175, 175, 175);
  beginShape();//Comienzo de la forma
  vertex(675, 450);
  vertex(655, 373);
  vertex(655, 334);
  vertex(562, 363);
  vertex(562, 376);
  vertex(591, 387);
  vertex(619, 389);
  vertex(639, 385);
  vertex(643, 420);
  endShape(CLOSE);//Fin de la forma

  //ROSTRO BASE
  strokeWeight(5);//Tamaño del trazo
  fill(255, 255, 255);//Fondo de la forma
  beginShape();//Comienzo de la forma
  vertex(485, 165);
  vertex(515, 310);
  vertex(550, 350);
  vertex(565, 360);
  vertex(585, 375);
  vertex(600, 380);//barbilla
  vertex(620, 378);
  vertex(630, 375);
  vertex(650, 360);
  vertex(665, 350);
  vertex(675, 340);
  vertex(692, 310);
  vertex(710, 265);
  vertex(715, 160);
  endShape(CLOSE);//Fin de la forma

  //SOMBRA SOBRE ROSTRO BASE MÁS CLARA
  noStroke();
  fill(242, 242, 242);
  beginShape();//Comienzo de la forma
  vertex(515, 307);
  vertex(536, 331);
  vertex(577, 313);
  vertex(580, 312);
  vertex(596, 315);
  vertex(600, 320);
  vertex(596, 325);
  vertex(610, 326);
  vertex(612, 315);
  vertex(644, 305);
  vertex(658, 303);
  vertex(679, 306);
  vertex(703, 277);
  vertex(716, 208);
  vertex(697, 141);
  vertex(489, 154);
  endShape(CLOSE);//Fin de la forma

  //SOMBRA SOBRE ROSTRO BASE MÁS OSCURA
  //Sombra Lateral Derecha
  strokeWeight(0);
  fill(175, 175, 175);
  beginShape();//Comienzo de la forma
  vertex(600, 378);
  vertex(620, 378);
  vertex(630, 375);
  vertex(650, 360);
  vertex(665, 350);
  vertex(675, 340);
  vertex(692, 310);
  vertex(710, 265);
  vertex(715, 160);
  vertex(694, 141);
  vertex(670, 139);
  vertex(689, 205);
  vertex(693, 252);
  vertex(690, 281);
  vertex(679, 313);
  vertex(663, 336);
  vertex(643, 355);
  vertex(625, 371);
  endShape(CLOSE);//Fin de la forma

  //Sombra Flequillo
  beginShape();//Comienzo de la forma
  vertex(711, 187);
  vertex(648, 195);
  vertex(609, 198);
  vertex(609, 173);
  vertex(665, 168);
  vertex(706, 159);
  endShape(CLOSE);//Fin de la forma

  //LUZ SOBRE NARIZ
  fill(210, 210, 240);
  beginShape();
  vertex(604, 296);
  vertex(600, 297);
  vertex(596, 299);
  vertex(597, 302);
  vertex(603, 305);
  vertex(607, 305);
  vertex(612, 304);
  vertex(615, 299);
  vertex(609, 297);
  endShape(CLOSE);

  //OJERA
  fill(70, 70, 115);
  beginShape();//Comienzo de la forma
  vertex(633, 234);
  vertex(630, 239);
  vertex(634, 244);
  vertex(647, 249);
  vertex(664, 249);
  vertex(685, 231);
  vertex(688, 222);
  vertex(682, 221);
  vertex(669, 237);
  vertex(661, 242);
  vertex(646, 242);
  endShape(CLOSE);//Fin de la forma

  //OJO DERECHO CONTORNO (SANO)
  strokeWeight(2);//Tamaño del trazo
  fill(255, 255, 255);//Fondo de la forma
  beginShape();//Comienzo de la forma
  curveVertex(631, 234);
  curveVertex(631, 234);
  curveVertex(639, 228);
  curveVertex(647, 222);
  curveVertex(652, 223);
  curveVertex(668, 223);
  curveVertex(682, 224); //punta
  stroke(3);
  curveVertex(676, 232);
  curveVertex(667, 240);
  curveVertex(662, 243);
  curveVertex(648, 243);
  curveVertex(648, 243);
  endShape(CLOSE);//Fin de la forma

  //PARPADO SOMBRA MAKEUP
  stroke(0);
  fill(70, 70, 115);//Color de la forma
  beginShape();//Comienzo de la forma
  vertex(631, 234);
  vertex(628, 232);
  vertex(639, 220);
  vertex(647, 217);
  vertex(652, 215);
  vertex(668, 215);
  vertex(684, 221);
  vertex(669, 222);
  vertex(654, 222);
  vertex(643, 225);
  vertex(635, 229);
  endShape(CLOSE);//Fin de la forma

  //PARPADO
  stroke(1);
  line(631, 234, 628, 232);
  line(628, 232, 639, 220);
  line(639, 220, 647, 217);
  line(647, 217, 652, 215);
  line(652, 215, 668, 215);
  line(668, 215, 684, 221);
  line(684, 221, 682, 224);

  //PESTAÑAS SUPERIOR
  line(633, 231, 629, 230);
  line(636, 229, 634, 225);
  line(640, 225, 638, 222);
  line(645, 222, 643, 219);
  line(647, 217, 650, 222);
  line(653, 222, 651, 216);
  line(657, 222, 657, 215);
  line(660, 220, 661, 216);
  line(663, 222, 665, 215);
  line(667, 222, 669, 216);
  line(671, 222, 672, 218);
  line(674, 223, 676, 219);

  //PESTAÑAS INFERIOR
  line(633, 236, 631, 238);
  line(636, 237, 633, 241);
  line(639, 239, 637, 242);
  line(642, 240, 640, 245);
  line(645, 243, 643, 247);
  line(649, 243, 647, 247);
  line(653, 245, 653, 248);// acá comienzan las pestaañs verticales en x
  line(658, 245, 658, 248);
  line(662, 245, 662, 248);
  line(666, 242, 666, 245);
  line(670, 239, 672, 242);
  line(673, 236, 675, 238);
  line(675, 232, 677, 235);
  line(678, 231, 680, 233);
  line(680, 227, 682, 229);

  //IRIS OJO DERECHO (SANO)
  strokeWeight(2);//Tamaño del trazo
  fill(0, 0, 0);//Fondo de la forma
  beginShape();//Comienzo de la forma
  curveVertex(643, 225);
  curveVertex(643, 225);
  curveVertex(646, 232);
  curveVertex(651, 236);
  curveVertex(659, 237);
  curveVertex(667, 231);
  curveVertex(669, 221);
  curveVertex(653, 222);
  curveVertex(653, 220);
  endShape(CLOSE);//Fin de la forma

  //PUPULA OJO DERECHO (SANO)
  fill(255, 255, 255);
  circle(664, 225, 6);

  //CEJA
  strokeWeight(4);
  line(634, 209, 646, 200);
  line(646, 200, 656, 198);
  line(656, 198, 666, 196);
  strokeWeight(3);
  line(666, 196, 688, 199);

  //SOMBRA NARIZ
  beginShape();
  strokeWeight(0);
  fill(175, 176, 175);
  vertex(615, 308);
  vertex(620, 300);
  vertex(615, 290);
  vertex(615, 258);
  vertex(619, 288);
  vertex(625, 297);
  vertex(621, 307);
  endShape(CLOSE);

  //NARIZ
  strokeWeight(2);//Tamaño del trazo
  line(599, 258, 595, 290);
  strokeWeight(3);//Tamaño del trazo
  line(595, 290, 591, 301);
  line(591, 301, 595, 308);
  line(595, 307, 605, 311);
  line(605, 311, 615, 308);//mitad en X de la nariz
  line(615, 308, 620, 300);
  line(620, 300, 615, 290);
  strokeWeight(2);//Tamaño del trazo
  line(615, 290, 613, 258);

    //LABIO INFERIOR
  strokeWeight(2);//Tamaño del trazo
  fill(0, 0, 50);//Color de la forma
  beginShape();//Comienzo de la forma
  vertex(575, 335);
  vertex(588, 346);
  vertex(598, 349);
  vertex(602, 348); //esta es la mitad en X del labio inferior
  vertex(612, 349);
  vertex(620, 345);
  vertex(625, 341);
  vertex(635, 330);//punta derecha del labio inferior
  endShape(CLOSE);//Fin de la forma
  
  //LABIO SUPERIOR
  strokeWeight(2);//Tamaño del trazo
  fill(0, 0, 50);//Color de la forma
  beginShape();//Comienzo de la forma
  vertex(575, 335);
  vertex(605, 338); //esta es la mitad en X inferior labio superior
  vertex(630, 335);
  vertex(635, 330);
  vertex(625, 329);
  vertex(620, 327);
  vertex(610, 325);
  vertex(607, 326);
  vertex(604, 328);//esta es la mitad en X superior del labio superior
  vertex(600, 325);
  vertex(595, 325);
  vertex(580, 333);
  endShape(CLOSE);//Fin de la forma

  //PELO BASE
  strokeWeight(2);//Tamaño del trazo
  fill(0, 0, 0);//Fondo de la forma
  beginShape();//Comienzo de la forma
  vertex(450, 260);
  vertex(467, 300);
  vertex(480, 325);
  vertex(485, 323);
  vertex(509, 340);
  vertex(522, 348);
  vertex(545, 358);
  vertex(547, 351);
  vertex(548, 350);
  vertex(515, 310);
  vertex(527, 303);
  vertex(516, 281);
  vertex(510, 230);
  vertex(525, 190); //Flequillo inicio
  vertex(664, 185);
  vertex(695, 180); //Flequillo fin
  vertex(700, 213);
  vertex(700, 225);
  vertex(703, 250);
  vertex(701, 264);
  vertex(700, 275);
  vertex(687, 303);
  vertex(695, 307);
  vertex(675, 345);
  vertex(675, 356);
  vertex(698, 337);
  vertex(710, 320);
  vertex(728, 295);
  vertex(750, 190);
  vertex(740, 120);
  vertex(715, 65);
  vertex(655, 20);
  vertex(585, 10);
  vertex(575, 15);
  vertex(550, 15);
  vertex(500, 35);
  vertex(475, 65);
  vertex(442, 132);
  vertex(433, 190);
  endShape(CLOSE);//Fin de la forma

  //PELO LUZ PRINCIPAL
  fill(120, 140, 190);//Color de la forma
  stroke(0);
  beginShape();
  vertex(448, 256);
  vertex(432, 193);
  vertex(441, 131);
  vertex(472, 64);
  vertex(499, 34);
  vertex(550, 13);
  vertex(576, 15);
  vertex(586, 8);
  vertex(656, 20);
  vertex(589, 13);
  vertex(574, 19);
  vertex(544, 24);
  vertex(509, 38);
  vertex(492, 52);
  vertex(480, 65);
  vertex(464, 96);
  vertex(450, 131);
  vertex(441, 165);
  vertex(440, 194);
  endShape(CLOSE);

  //PELO BRILLO
  strokeWeight(0);//Tamaño del trazo
  fill(70, 70, 115);//Color de la forma

  //Pelo Flequillo Brillo 1
  beginShape();//Comienzo de la forma
  vertex(635, 188);
  vertex(653, 189);
  vertex(694, 182);
  vertex(710, 176);
  vertex(700, 144);
  vertex(680, 95);
  vertex(686, 115);
  vertex(700, 167);
  vertex(701, 175);
  endShape(CLOSE);//Fin de la forma

  //Pelo Flequillo Brillo 2
  beginShape();//Comienzo de la forma
  vertex(688, 179);
  vertex(670, 108);
  vertex(650, 69);
  vertex(664, 105);
  vertex(668, 117);
  vertex(682, 182);
  endShape(CLOSE);//Fin de la forma

  //Pelo Flequillo Brillo 3
  beginShape();//Comienzo de la forma
  vertex(658, 184);
  vertex(655, 157);
  vertex(623, 71);
  vertex(634, 111);
  vertex(649, 157);
  vertex(649, 187);
  endShape(CLOSE);//Fin de la forma

  //Pelo Brillo Lateral Derecho 1
  beginShape();//Comienzo de la forma
  vertex(703, 305);
  vertex(709, 290);
  vertex(718, 223);
  vertex(719, 175);
  vertex(697, 111);
  vertex(723, 175);
  vertex(721, 224);
  vertex(711, 293);
  endShape(CLOSE);//Fin de la forma

  //Pelo Brillo Lateral Derecho 2
  beginShape();//Comienzo de la forma
  vertex(683, 342);
  vertex(708, 315);
  vertex(719, 296);
  vertex(733, 222);
  vertex(734, 174);
  vertex(724, 138);
  vertex(699, 90);
  vertex(721, 141);
  vertex(730, 171);
  vertex(730, 222);
  vertex(721, 265);
  vertex(718, 291);
  vertex(707, 311);
  endShape(CLOSE);//Fin de la forma

  //Pelo Brillo Lateral Izquierdo 1
  fill(70, 70, 115);//Color de la forma
  beginShape();//Comienzo de la forma
  vertex(522, 308);
  vertex(494, 245);
  vertex(486, 205);//puntita arriba
  vertex(490, 245);//puntita izquierda
  vertex(517, 310);
  endShape(CLOSE);//Fin de la forma

  //Pelo Brillo Lateral Izquierdo 2
  fill(80, 80, 115);//Color de la forma
  beginShape();//Comienzo de la forma
  vertex(515, 313);//puntita inferior derecha
  vertex(485, 247);
  vertex(473, 195);//puntita superior
  vertex(480, 245);
  vertex(510, 314);//puntita inferior izquierda
  endShape(CLOSE);//Fin de la forma

  //Pelo Brillo Lateral Izquierdo 3
  fill(120, 120, 190);//Color de la forma
  beginShape();//Comienzo de la forma
  vertex(505, 318);//puntita inferior derecha
  vertex(475, 247);
  vertex(463, 150);//puntita superior
  vertex(471, 247);//puntita medio izquierda
  vertex(500, 320);//puntita inferior izquierda
  endShape(CLOSE);//Fin de la forma

  //Pelo Brillo Lateral Izquierdo 4
  fill(70, 70, 115);//Color de la forma
  beginShape();
  vertex(539, 347);
  vertex(523, 335);
  vertex(503, 319);
  vertex(494, 321);
  vertex(517, 337);
  endShape(CLOSE);

  //FONDO DE UZUMAKI
  strokeWeight(5);//Tamaño del trazo
  fill(150, 60, 75);//Fondo de la forma
  beginShape();//Comienzo de la forma
  curveVertex(530, 254);
  curveVertex(500, 232);
  curveVertex(480, 194);
  curveVertex(478, 140);
  curveVertex(505, 86);
  curveVertex(556, 54);
  curveVertex(598, 73);
  curveVertex(628, 131);
  curveVertex(625, 181);
  curveVertex(609, 219);
  curveVertex(575, 259);
  curveVertex(549, 260);
  curveVertex(527, 260);
  curveVertex(510, 248);
  endShape(CLOSE);//Fin de la forma

  //SOMBRA SOBRE FONDO UZUMAKI
  strokeWeight(0);
  fill(145, 40, 60);
  beginShape();//Comienzo de la forma
  vertex(563, 237);
  vertex(599, 219);
  vertex(623, 152);
  vertex(614, 108);
  vertex(586, 70);
  vertex(542, 58);
  vertex(518, 72);
  vertex(496, 99);
  vertex(477, 143);
  vertex(486, 208);
  vertex(536, 247);
  endShape(CLOSE);//Fin de la forma

  fill(120, 30, 45);
  beginShape();//Comienzo de la forma
  vertex(566, 211);
  vertex(593, 175);
  vertex(596, 142);
  vertex(585, 109);
  vertex(564, 85);
  vertex(530, 89);
  vertex(505, 112);
  vertex(494, 161);
  vertex(504, 203);
  vertex(534, 238);
  endShape(CLOSE);//Fin de la forma

  fill(80, 15, 25);
  beginShape();//Comienzo de la forma
  vertex(550, 189);
  vertex(569, 182);
  vertex(576, 157);
  vertex(569, 126);
  vertex(554, 104);
  vertex(542, 107);
  vertex(524, 121);
  vertex(515, 165);
  vertex(522, 191);
  vertex(548, 196);
  endShape(CLOSE);//Fin de la forma

  fill(30, 5, 10);
  beginShape();//Comienzo de la forma
  vertex(552, 172);
  vertex(562, 154);
  vertex(559, 135);
  vertex(549, 121);
  vertex(543, 123);
  vertex(534, 159);
  vertex(539, 178);
  vertex(548, 181);
  endShape(CLOSE);//Fin de la forma

  fill(3, 0, 1);
  ellipse(550, 154, 10, 20);

  //UZUMAKI
  strokeWeight(8);
  line(503, 78, 551, 58);
  line(551, 58, 574, 62);
  line(574, 62, 589, 73);
  line(589, 73, 601, 90);
  line(601, 90, 612, 111);
  line(612, 111, 619, 139);
  line(619, 139, 613, 187);
  line(613, 187, 598, 216);
  line(598, 216, 580, 237);
  line(580, 237, 550, 247);
  line(550, 247, 533, 246);
  line(533, 246, 504, 224);//fin primera vuelta
  strokeWeight(7);
  line(504, 224, 486, 189);
  line(486, 189, 483, 151);
  line(483, 151, 498, 107);
  line(498, 107, 518, 84);
  line(518, 84, 554, 71);
  line(554, 71, 576, 79);
  line(576, 79, 598, 106);
  line(598, 106, 608, 138);
  line(608, 138, 604, 184);
  line(604, 184, 586, 215);
  line(586, 215, 549, 236);
  line(549, 236, 524, 231);//fin segunda vuelta
  strokeWeight(6);
  line(524, 231, 503, 204);
  line(503, 204, 492, 164);
  line(492, 164, 505, 112);
  line(505, 112, 530, 88);
  line(530, 88, 566, 86);
  line(566, 86, 587, 110);
  line(587, 110, 598, 147);
  line(598, 147, 593, 180);
  line(593, 180, 577, 207);//fin tercera vuelta
  strokeWeight(5);
  line(577, 207, 544, 215);
  line(544, 215, 513, 199);
  line(513, 199, 503, 165);
  line(503, 165, 517, 119);
  line(517, 119, 537, 99);
  line(537, 99, 562, 96);
  line(562, 96, 579, 123);
  line(579, 123, 587, 153);
  line(587, 153, 581, 184);
  line(581, 184, 564, 202);//fin cuarta vuelta
  strokeWeight(4);
  line(564, 202, 523, 192);
  line(523, 192, 514, 165);
  line(514, 165, 526, 123);
  line(526, 123, 542, 107);
  line(542, 107, 556, 105);
  line(556, 105, 571, 129);
  line(571, 129, 577, 157);
  line(577, 157, 569, 183);
  line(569, 183, 555, 190);//fin quinta vuelta
  strokeWeight(3);
  line(555, 190, 532, 187);
  line(532, 187, 525, 172);
  line(525, 172, 535, 125);
  line(535, 125, 545, 115);
  line(545, 115, 553, 114);
  line(553, 114, 565, 134);
  line(565, 134, 568, 160);
  line(568, 160, 556, 181);//fin sexta vuelta
  strokeWeight(2);
  line(556, 181, 538, 179);
  line(538, 179, 534, 163);
  line(534, 163, 543, 124);
  line(543, 124, 549, 120);
  line(549, 120, 558, 138);
  line(558, 138, 560, 158);
  line(560, 158, 550, 174);//fin séptima vuelta
  strokeWeight(1);
  line(550, 174, 543, 173);
  line(543, 173, 542, 160);
  line(542, 160, 547, 134);
  line(547, 134, 552, 134);
  line(552, 134, 556, 155);
  line(556, 155, 551, 164);
  line(551, 164, 546, 161);
  line(546, 161, 549, 145);
  line(549, 145, 551, 145);
  line(551, 145, 553, 153);
  line(553, 153, 550, 157);
  line(550, 157, 549, 155);

  //SOMBRA DETRÁS DE OJO UZUMAKI
  beginShape();//Comienzo de la forma
  fill(0, 0, 0);
  vertex(539, 195);
  vertex(505, 210);
  vertex(475, 205);
  vertex(482, 228);
  vertex(520, 252);
  vertex(547, 256);
  vertex(566, 253);
  vertex(580, 243);
  vertex(593, 220);
  vertex(573, 206);
  endShape(CLOSE);//Fin de la forma

  //SOMBRA DETRÁS DE OJO UZUMAKI MÁS CLARA
  beginShape();//Comienzo de la forma
  fill(18, 18, 18);
  vertex(509, 229);
  vertex(511, 236);
  vertex(536, 248);
  vertex(564, 246);
  vertex(578, 238);
  vertex(586, 224);
  vertex(569, 215);
  vertex(522, 232);
  vertex(517, 222);
  vertex(521, 218);
  endShape(CLOSE);//Fin de la forma

  //OJO UZUMAKI
  stroke(0, 0, 0);
  strokeWeight(0);
  fill(255, 255, 255);
  circle(548, 222, 60);

  //SOMBRA EN OJO UZUMAKI
  //Sombra más gris
  fill(175, 175, 175);
  beginShape();//Comienzo de la forma
  vertex(517, 219);
  vertex(519, 234);
  vertex(525, 240);
  vertex(546, 249);
  vertex(567, 246);
  vertex(576, 233);
  vertex(577, 219);
  vertex(579, 220);
  vertex(563, 227);
  vertex(539, 228);
  vertex(530, 224);
  endShape(CLOSE);//Fin de la forma
  //Sombra más oscura
  fill(105, 105, 105);
  beginShape();//Comienzo de la forma
  vertex(517, 219);
  vertex(519, 234);
  vertex(525, 240);
  vertex(546, 249);
  vertex(567, 246);
  vertex(576, 233);
  vertex(577, 219);
  vertex(579, 230);
  vertex(559, 237);
  vertex(537, 238);
  vertex(526, 232);
  endShape(CLOSE);//Fin de la forma

  //IRIS UZUMAKI
  strokeWeight(0);
  fill(0, 0, 0);
  circle(548, 222, 30);
  //PUNTO BLANCO EN OJO UZUMAKI
  fill(255, 255, 255);
  circle(542, 215, 5);

  //VENAS EN OJO UZUMAKI
  stroke(55, 0, 0);
  strokeWeight(2);
  line(564, 198, 564, 202);
  strokeWeight(1);
  line(564, 202, 561, 206);

  strokeWeight(3);
  line(573, 207, 571, 211);
  strokeWeight(2);
  line(571, 211, 567, 217);
  strokeWeight(1);
  line(572, 210, 567, 211);

  strokeWeight(2);
  line(579, 219, 573, 217);
  strokeWeight(1);
  line(573, 217, 568, 222);

  strokeWeight(2);
  line(577, 229, 569, 228);
  strokeWeight(1);
  line(569, 228, 567, 225);
  line(572, 228, 567, 232);
  line(567, 232, 562, 234);

  strokeWeight(3);
  line(563, 248, 562, 242);
  strokeWeight(2);
  line(562, 242, 555, 243);
  strokeWeight(1);
  line(555, 243, 552, 239);

  strokeWeight(2);
  line(543, 250, 540, 244);
  strokeWeight(1);
  line(540, 244, 543, 239);

  strokeWeight(3);
  line(526, 242, 532, 239);
  strokeWeight(1);
  line(532, 239, 532, 232);

  strokeWeight(2);
  line(517, 232, 525, 226);
  strokeWeight(1);
  line(525, 226, 530, 227);

  strokeWeight(3);
  line(518, 215, 525, 216);
  strokeWeight(1);
  line(525, 216, 532, 211);

  strokeWeight(2);
  line(531, 196, 534, 202);
  strokeWeight(1);
  line(534, 202, 538, 206);

  strokeWeight(3);
  line(549, 193, 547, 197);
  strokeWeight(2);
  line(547, 197, 552, 203);
  strokeWeight(1);
  line(548, 201, 549, 200);
  line(547, 200, 545, 202);

  //SOMBRA EN IRIS UZUMAKI
  beginShape();
  stroke(0);
  fill(10, 0, 0);
  vertex(519, 232);
  vertex(519, 249);
  vertex(534, 249);
  vertex(546, 253);
  vertex(561, 253);
  vertex(573, 245);
  vertex(574, 235);
  vertex(560, 245);
  vertex(549, 244);
  vertex(539, 246);
  endShape(CLOSE);

  //FIRMA
  rect(717, 374, 75, 20);
  fill(255, 255, 255);
  text("Digital Coffin", 722, 387);

  image(uzumaki, 0, 0, 400, 400);//Posicionamos la imagen en el sketch
}
