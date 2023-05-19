precision mediump float;

uniform sampler2D conv2d_2_tf;
uniform sampler2D conv2d_2_tf1;

uniform vec2 u_resolution;
uniform vec2 u_texture_size;

varying vec2 v_texture_coord;

#define conv2d_2_tf_pos (v_texture_coord)
#define conv2d_2_tf_tex(pos) (texture2D(conv2d_2_tf, pos))
#define conv2d_2_tf_size (u_texture_size)
#define conv2d_2_tf_pt (1.0 / conv2d_2_tf_size)
#define conv2d_2_tf_texOff(offset) (conv2d_2_tf_tex(conv2d_2_tf_pos + conv2d_2_tf_pt * offset))
#define conv2d_2_tf1_pos (v_texture_coord)
#define conv2d_2_tf1_tex(pos) (texture2D(conv2d_2_tf1, pos))
#define conv2d_2_tf1_size (u_texture_size)
#define conv2d_2_tf1_pt (1.0 / conv2d_2_tf1_size)
#define conv2d_2_tf1_texOff(offset) (conv2d_2_tf1_tex(conv2d_2_tf1_pos + conv2d_2_tf1_pt * offset))

#define go_0(x_off, y_off) (max((conv2d_2_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max((conv2d_2_tf1_texOff(vec2(x_off, y_off))), 0.0))
#define go_2(x_off, y_off) (max(-(conv2d_2_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_3(x_off, y_off) (max(-(conv2d_2_tf1_texOff(vec2(x_off, y_off))), 0.0))
void main() {
  vec4 result = mat4(0.1851775, 0.053705044, 0.033816848, -0.018555025, -0.21204336, -0.01706974, 0.088259794, -0.13126148, 0.10729598, -0.043457437, 0.08634712, 0.09220895, 0.062131613, -0.01995871, 0.05181067, 0.18520063) * go_0(-1.0, -1.0);
  result += mat4(0.1662002, -0.14197104, -0.052809287, 0.025287712, -0.08330898, -0.08998097, -0.15642618, -0.14941245, -0.03481203, 0.061857622, 0.26051775, -0.0005498248, 0.086427025, 0.024108192, -0.12418039, 0.022286376) * go_0(-1.0, 0.0);
  result += mat4(0.058200672, -0.3073398, 0.17150162, -0.13394679, -0.075118184, -0.14607768, -0.006172172, 0.007731589, -0.21818224, -0.06449433, -0.038958784, 0.037722416, 0.28699976, -0.027563032, 0.23295315, 0.028444216) * go_0(-1.0, 1.0);
  result += mat4(0.12871371, 0.0064904913, 0.14985761, -0.10923005, 0.17413563, 0.1599109, -0.08457703, 0.108153716, -0.08871187, -0.06661137, 0.2754416, -0.009667768, 0.39819396, 0.12392097, 0.14145902, 0.0019376524) * go_0(0.0, -1.0);
  result += mat4(0.13893189, 0.12715353, 0.015191678, -0.21003054, -0.030412354, -0.01676613, -0.19799289, -0.006130075, 0.37676954, -0.14475077, -0.2065198, -0.30432892, -0.14944535, -0.09121536, -0.107600585, -0.24462196) * go_0(0.0, 0.0);
  result += mat4(-0.11653076, -0.0068671284, -0.02249137, -0.17877012, -0.15063138, -0.13514869, 0.107643366, -0.03196477, -0.086422764, 0.3079287, 0.17584166, -0.032449376, -0.06917114, -0.2682637, -0.18978168, -0.037039287) * go_0(0.0, 1.0);
  result += mat4(0.12014731, -0.030360512, -0.12954475, -0.110275604, -0.077214256, 0.019689744, 0.22149551, -0.002266716, 0.09697784, -0.124532826, -0.16776511, -0.034212478, -0.36935154, 0.016926935, 0.1363609, 0.20415346) * go_0(1.0, -1.0);
  result += mat4(-0.11199535, -0.001692563, -0.09058429, -0.08437503, 0.092625685, 0.06046257, 0.25509837, -0.011657033, -0.17949764, -0.10718947, -0.1180669, -0.24681842, -0.1747311, 0.0014518246, -0.042863015, 0.06103357) * go_0(1.0, 0.0);
  result += mat4(0.14979295, -0.037154514, 0.01957725, 0.012282435, 0.09168596, -0.05552286, 0.111671515, 0.0078630615, -0.10319766, -0.06416261, -0.23097566, -0.13931875, 0.2110811, 0.013095802, -0.2306504, -0.025639111) * go_0(1.0, 1.0);
  result += mat4(-0.10091975, -0.10095426, -0.023449723, -0.022170888, 0.054953706, -0.13049407, 0.08289061, 0.023241632, 0.08735388, -0.0058387457, 0.17897247, 0.011434436, 0.008181139, -0.0034718404, -0.015372735, -0.07657766) * go_1(-1.0, -1.0);
  result += mat4(-0.023442164, 0.07535702, 0.024391165, -0.050532013, 0.044168636, 0.0062343236, -0.019756999, -0.009695123, 0.10102337, 0.0052776975, -0.14944167, -0.060957722, 0.24367364, -0.08069369, 0.12170072, -0.047048368) * go_1(-1.0, 0.0);
  result += mat4(-0.18376935, -0.08407229, -0.12943378, 0.0738419, -0.12404976, -0.13367929, 0.11265896, -0.021353, 0.003783386, 0.50088304, 0.14058582, 0.041053623, 0.038247623, -0.014179976, 0.007905778, -0.042492237) * go_1(-1.0, 1.0);
  result += mat4(-0.046272535, 0.052449115, 0.17190954, -0.004745371, -0.045572635, -0.09292636, 0.36309823, 0.16673928, -0.099154025, -0.109614775, 0.17803112, 0.19907133, -0.14306267, 0.06898593, 0.11493454, 0.06795014) * go_1(0.0, -1.0);
  result += mat4(0.26181114, -0.044014625, -0.21605036, -0.08646438, 0.21038742, -0.084986, 0.0504626, 0.17514943, -0.25218952, -0.18691514, 0.057650108, 0.08653614, -0.101205684, 0.03176334, 0.18569492, 0.17973189) * go_1(0.0, 0.0);
  result += mat4(-0.0339215, 0.20112811, -0.12986277, 0.028961731, -0.056813832, 0.04451147, -0.07827432, -0.0860976, 0.096853435, 0.3483546, -0.35758162, -0.11749375, -0.035918653, 0.06140711, -0.08520154, 0.02418808) * go_1(0.0, 1.0);
  result += mat4(-0.09643022, -0.10491069, 0.0068604187, 0.023679713, 0.096521445, -0.29323488, 0.33353668, 0.112864286, -0.1172182, -0.07233183, 0.06607239, 0.08589609, 0.055790007, 0.14396138, -0.14191268, 0.00034840964) * go_1(1.0, -1.0);
  result += mat4(0.15357164, -0.038462736, 0.08143956, 0.1744909, 0.40503287, -0.114508316, 0.003937322, 0.2536635, -0.042445306, -0.15622465, 0.09155284, 0.010992155, -0.20646071, 0.022801135, 0.08894491, 0.069300614) * go_1(1.0, 0.0);
  result += mat4(-0.12663515, 0.023849454, -0.053604446, 0.12082873, -0.247968, -0.020969635, -0.03831894, -0.014617553, 0.22630337, 0.037801865, 0.052950703, 0.04285706, -0.14487264, 0.20786528, -0.08719664, 0.1752347) * go_1(1.0, 1.0);
  result += mat4(-0.073527604, -0.050752833, 0.051830504, 0.32868716, 0.17474994, 0.016937364, -0.08792601, -0.024481766, -0.022229593, 0.030706186, 0.09213566, -0.076506205, 0.073404044, 0.10368055, -0.175889, -0.08453031) * go_2(-1.0, -1.0);
  result += mat4(-0.06838216, 0.007698341, 0.063972116, -0.015604406, 0.16135305, 0.18044342, 0.024137018, -0.23326185, 0.13235588, -0.009096587, -0.058368143, -0.077040404, 0.0011419816, -0.09246194, 0.061036937, 0.049564146) * go_2(-1.0, 0.0);
  result += mat4(0.023225296, -0.00060856267, -0.07775185, 0.016958566, -0.2641349, -0.08263046, -0.15350416, -0.30203494, 0.113956556, -0.010813236, -0.017738314, -0.13689043, -0.10318342, 0.025793184, -0.010336172, 0.09733422) * go_2(-1.0, 1.0);
  result += mat4(-0.04462596, 0.052866418, -0.34754288, 0.05540498, -0.24492586, -0.32016864, 0.18145293, 0.24873725, 0.32388234, -0.034801524, -0.1347588, -0.07565546, 0.015183539, 0.05059595, 0.08090056, 0.05930932) * go_2(0.0, -1.0);
  result += mat4(0.045346696, -0.052527856, 0.052270077, 0.13417454, 0.05200045, 0.028119288, 0.005115497, 0.22952151, -0.2158375, 0.12241308, 0.3507457, 0.08616576, 0.07592416, 0.28470486, 0.3432788, 0.24857087) * go_2(0.0, 0.0);
  result += mat4(0.21311626, 0.052607164, 0.1248861, 0.20193806, 0.045226507, 0.14512901, -0.15103437, -0.17926466, 0.11657411, -0.32711068, -0.16332194, -0.07793982, -0.21802668, 0.5183869, -0.13567342, 0.07823041) * go_2(0.0, 1.0);
  result += mat4(0.00796368, 0.048073012, -0.14537893, -0.021708772, 0.036246423, 0.1062395, 0.12605369, 0.007073524, -0.1572743, 0.07439501, 0.089162275, -0.0039608316, 0.332032, -0.05461242, -0.17615359, -0.10240517) * go_2(1.0, -1.0);
  result += mat4(0.20636982, -0.0024615112, -0.10625786, 0.024270926, 0.061810836, -0.13585201, -0.16581286, 0.23549418, 0.01928842, 0.07404979, -0.054449487, 0.04096373, 0.046939734, 0.003980803, 0.02111498, 0.064925276) * go_2(1.0, 0.0);
  result += mat4(0.10485388, 0.06850885, -0.11292169, 0.16991565, -0.15282536, 0.124175504, -0.050431166, -0.06689582, -0.00059811946, 0.033696912, 0.11055047, 0.033060126, -0.17472714, 0.0048819613, -0.04478706, -0.1344572) * go_2(1.0, 1.0);
  result += mat4(-0.20473132, 0.056477875, 0.059559986, 0.115130566, -0.058425788, -0.035971727, 0.08334707, -0.096510135, -0.23206294, 0.10635798, -0.21575621, -0.07063254, 0.03877511, -0.107549034, 0.22248401, 0.21702304) * go_3(-1.0, -1.0);
  result += mat4(-0.02557767, 0.09886609, -0.100499466, 0.16687396, -0.084830604, 0.03150401, -0.049512494, 0.05595696, -0.13193256, -0.08585273, 0.14247662, 0.12290477, -0.07168309, 0.14531752, -0.048359327, 0.27716598) * go_3(-1.0, 0.0);
  result += mat4(0.13297586, 0.20674329, 0.14469388, 0.08981846, -0.004231366, -0.02819193, 0.15470329, 0.17299837, 0.113062344, -0.22716297, -0.21754944, -0.00083956274, -0.14160508, 0.1808253, 0.11268379, 0.27335623) * go_3(-1.0, 1.0);
  result += mat4(0.07497518, -0.06799594, -0.018158078, -0.00038999433, -0.15169668, -0.06928238, -0.33672288, -0.105485775, 0.33106267, 0.06698315, 0.019718744, -0.06810211, -0.35186404, -0.29145968, -0.056863394, 0.21498048) * go_3(0.0, -1.0);
  result += mat4(-0.013215512, -0.24763754, 0.20965266, 0.1068435, -0.13234195, 0.053566497, 0.05061848, -0.28645232, 0.15518288, 0.23247199, 0.017553907, -0.25181335, -0.048030723, -0.06663929, -0.111026704, -0.12663394) * go_3(0.0, 0.0);
  result += mat4(-0.010501938, -0.17995767, 0.06010859, 0.050185587, 0.108627126, -0.101203434, 0.07558728, 0.060466755, -0.106942676, -0.35854608, 0.16015992, 0.16823332, -0.06543775, -0.37310675, 0.014043972, -0.18328045) * go_3(0.0, 1.0);
  result += mat4(0.09712849, 0.013983463, 0.07291423, 0.031715546, 0.030862397, 0.045510456, -0.22066842, 0.063464865, 0.11721659, -0.10596602, -0.20611264, 0.052158818, -0.3961766, -0.03781582, 0.17633812, 0.1316111) * go_3(1.0, -1.0);
  result += mat4(-0.25029674, 0.07153423, -0.35125682, -0.18255402, -0.19569087, 0.00432772, -0.0969035, -0.24648514, -0.0040922165, 0.037500706, -0.038137026, 0.056214277, -0.048258524, 0.03567822, -0.05033007, -0.24696785) * go_3(1.0, 0.0);
  result += mat4(-0.03465209, -0.012495964, 0.22782089, 0.012034795, 0.2916752, 0.08264436, 0.15387125, -0.1473455, -0.15614432, 0.05536727, -0.027079755, 0.010725311, -0.03325222, -0.089212805, -0.10559839, -0.19647683) * go_3(1.0, 1.0);
  result += vec4(0.0001705175, -0.031081453, 0.010100773, -0.027214011);
  gl_FragColor = result;
}
