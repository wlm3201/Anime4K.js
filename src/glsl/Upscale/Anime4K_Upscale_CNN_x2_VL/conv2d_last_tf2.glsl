precision mediump float;

uniform sampler2D conv2d_tf;
uniform sampler2D conv2d_tf1;
uniform sampler2D conv2d_1_tf;
uniform sampler2D conv2d_1_tf1;
uniform sampler2D conv2d_2_tf;
uniform sampler2D conv2d_2_tf1;
uniform sampler2D conv2d_3_tf;
uniform sampler2D conv2d_3_tf1;
uniform sampler2D conv2d_4_tf;
uniform sampler2D conv2d_4_tf1;
uniform sampler2D conv2d_5_tf;
uniform sampler2D conv2d_5_tf1;
uniform sampler2D conv2d_6_tf;
uniform sampler2D conv2d_6_tf1;

uniform vec2 u_resolution;
uniform vec2 u_texture_size;

varying vec2 v_texture_coord;

#define conv2d_tf_pos (v_texture_coord)
#define conv2d_tf_tex(pos) (texture2D(conv2d_tf, pos))
#define conv2d_tf_size (u_texture_size)
#define conv2d_tf_pt (1.0 / conv2d_tf_size)
#define conv2d_tf_texOff(offset) (conv2d_tf_tex(conv2d_tf_pos + conv2d_tf_pt * offset))
#define conv2d_tf1_pos (v_texture_coord)
#define conv2d_tf1_tex(pos) (texture2D(conv2d_tf1, pos))
#define conv2d_tf1_size (u_texture_size)
#define conv2d_tf1_pt (1.0 / conv2d_tf1_size)
#define conv2d_tf1_texOff(offset) (conv2d_tf1_tex(conv2d_tf1_pos + conv2d_tf1_pt * offset))
#define conv2d_1_tf_pos (v_texture_coord)
#define conv2d_1_tf_tex(pos) (texture2D(conv2d_1_tf, pos))
#define conv2d_1_tf_size (u_texture_size)
#define conv2d_1_tf_pt (1.0 / conv2d_1_tf_size)
#define conv2d_1_tf_texOff(offset) (conv2d_1_tf_tex(conv2d_1_tf_pos + conv2d_1_tf_pt * offset))
#define conv2d_1_tf1_pos (v_texture_coord)
#define conv2d_1_tf1_tex(pos) (texture2D(conv2d_1_tf1, pos))
#define conv2d_1_tf1_size (u_texture_size)
#define conv2d_1_tf1_pt (1.0 / conv2d_1_tf1_size)
#define conv2d_1_tf1_texOff(offset) (conv2d_1_tf1_tex(conv2d_1_tf1_pos + conv2d_1_tf1_pt * offset))
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
#define conv2d_3_tf_pos (v_texture_coord)
#define conv2d_3_tf_tex(pos) (texture2D(conv2d_3_tf, pos))
#define conv2d_3_tf_size (u_texture_size)
#define conv2d_3_tf_pt (1.0 / conv2d_3_tf_size)
#define conv2d_3_tf_texOff(offset) (conv2d_3_tf_tex(conv2d_3_tf_pos + conv2d_3_tf_pt * offset))
#define conv2d_3_tf1_pos (v_texture_coord)
#define conv2d_3_tf1_tex(pos) (texture2D(conv2d_3_tf1, pos))
#define conv2d_3_tf1_size (u_texture_size)
#define conv2d_3_tf1_pt (1.0 / conv2d_3_tf1_size)
#define conv2d_3_tf1_texOff(offset) (conv2d_3_tf1_tex(conv2d_3_tf1_pos + conv2d_3_tf1_pt * offset))
#define conv2d_4_tf_pos (v_texture_coord)
#define conv2d_4_tf_tex(pos) (texture2D(conv2d_4_tf, pos))
#define conv2d_4_tf_size (u_texture_size)
#define conv2d_4_tf_pt (1.0 / conv2d_4_tf_size)
#define conv2d_4_tf_texOff(offset) (conv2d_4_tf_tex(conv2d_4_tf_pos + conv2d_4_tf_pt * offset))
#define conv2d_4_tf1_pos (v_texture_coord)
#define conv2d_4_tf1_tex(pos) (texture2D(conv2d_4_tf1, pos))
#define conv2d_4_tf1_size (u_texture_size)
#define conv2d_4_tf1_pt (1.0 / conv2d_4_tf1_size)
#define conv2d_4_tf1_texOff(offset) (conv2d_4_tf1_tex(conv2d_4_tf1_pos + conv2d_4_tf1_pt * offset))
#define conv2d_5_tf_pos (v_texture_coord)
#define conv2d_5_tf_tex(pos) (texture2D(conv2d_5_tf, pos))
#define conv2d_5_tf_size (u_texture_size)
#define conv2d_5_tf_pt (1.0 / conv2d_5_tf_size)
#define conv2d_5_tf_texOff(offset) (conv2d_5_tf_tex(conv2d_5_tf_pos + conv2d_5_tf_pt * offset))
#define conv2d_5_tf1_pos (v_texture_coord)
#define conv2d_5_tf1_tex(pos) (texture2D(conv2d_5_tf1, pos))
#define conv2d_5_tf1_size (u_texture_size)
#define conv2d_5_tf1_pt (1.0 / conv2d_5_tf1_size)
#define conv2d_5_tf1_texOff(offset) (conv2d_5_tf1_tex(conv2d_5_tf1_pos + conv2d_5_tf1_pt * offset))
#define conv2d_6_tf_pos (v_texture_coord)
#define conv2d_6_tf_tex(pos) (texture2D(conv2d_6_tf, pos))
#define conv2d_6_tf_size (u_texture_size)
#define conv2d_6_tf_pt (1.0 / conv2d_6_tf_size)
#define conv2d_6_tf_texOff(offset) (conv2d_6_tf_tex(conv2d_6_tf_pos + conv2d_6_tf_pt * offset))
#define conv2d_6_tf1_pos (v_texture_coord)
#define conv2d_6_tf1_tex(pos) (texture2D(conv2d_6_tf1, pos))
#define conv2d_6_tf1_size (u_texture_size)
#define conv2d_6_tf1_pt (1.0 / conv2d_6_tf1_size)
#define conv2d_6_tf1_texOff(offset) (conv2d_6_tf1_tex(conv2d_6_tf1_pos + conv2d_6_tf1_pt * offset))

#define g_0 (max((conv2d_tf_tex(conv2d_tf_pos)), 0.0))
#define g_1 (max((conv2d_tf1_tex(conv2d_tf1_pos)), 0.0))
#define g_2 (max(-(conv2d_tf_tex(conv2d_tf_pos)), 0.0))
#define g_3 (max(-(conv2d_tf1_tex(conv2d_tf1_pos)), 0.0))
#define g_4 (max((conv2d_1_tf_tex(conv2d_1_tf_pos)), 0.0))
#define g_5 (max((conv2d_1_tf1_tex(conv2d_1_tf1_pos)), 0.0))
#define g_6 (max(-(conv2d_1_tf_tex(conv2d_1_tf_pos)), 0.0))
#define g_7 (max(-(conv2d_1_tf1_tex(conv2d_1_tf1_pos)), 0.0))
#define g_8 (max((conv2d_2_tf_tex(conv2d_2_tf_pos)), 0.0))
#define g_9 (max((conv2d_2_tf1_tex(conv2d_2_tf1_pos)), 0.0))
#define g_10 (max(-(conv2d_2_tf_tex(conv2d_2_tf_pos)), 0.0))
#define g_11 (max(-(conv2d_2_tf1_tex(conv2d_2_tf1_pos)), 0.0))
#define g_12 (max((conv2d_3_tf_tex(conv2d_3_tf_pos)), 0.0))
#define g_13 (max((conv2d_3_tf1_tex(conv2d_3_tf1_pos)), 0.0))
#define g_14 (max(-(conv2d_3_tf_tex(conv2d_3_tf_pos)), 0.0))
#define g_15 (max(-(conv2d_3_tf1_tex(conv2d_3_tf1_pos)), 0.0))
#define g_16 (max((conv2d_4_tf_tex(conv2d_4_tf_pos)), 0.0))
#define g_17 (max((conv2d_4_tf1_tex(conv2d_4_tf1_pos)), 0.0))
#define g_18 (max(-(conv2d_4_tf_tex(conv2d_4_tf_pos)), 0.0))
#define g_19 (max(-(conv2d_4_tf1_tex(conv2d_4_tf1_pos)), 0.0))
#define g_20 (max((conv2d_5_tf_tex(conv2d_5_tf_pos)), 0.0))
#define g_21 (max((conv2d_5_tf1_tex(conv2d_5_tf1_pos)), 0.0))
#define g_22 (max(-(conv2d_5_tf_tex(conv2d_5_tf_pos)), 0.0))
#define g_23 (max(-(conv2d_5_tf1_tex(conv2d_5_tf1_pos)), 0.0))
#define g_24 (max((conv2d_6_tf_tex(conv2d_6_tf_pos)), 0.0))
#define g_25 (max((conv2d_6_tf1_tex(conv2d_6_tf1_pos)), 0.0))
#define g_26 (max(-(conv2d_6_tf_tex(conv2d_6_tf_pos)), 0.0))
#define g_27 (max(-(conv2d_6_tf1_tex(conv2d_6_tf1_pos)), 0.0))
void main() {
  vec4 result = mat4(0.1765669, 0.14268716, 0.19186598, 0.15799578, 0.016374417, 0.018578433, 0.0039475, 0.0046772263, 0.39840183, 0.36909792, 0.35409746, 0.37422222, -0.108508386, -0.1331279, -0.10336035, -0.14776541) * g_0;
  result += mat4(-0.057757027, -0.14071062, -0.025283009, -0.09397916, -0.09031894, -0.14219165, -0.08299535, -0.13970287, -0.12259208, -0.14382727, -0.22002274, -0.25016093, -0.048906635, 0.06620249, 0.016965045, 0.1295978) * g_1;
  result += mat4(-0.16748372, -0.13718611, -0.18565705, -0.15029612, -0.080749065, -0.09955825, 0.032431383, 0.023855643, -0.2748885, -0.23232168, -0.29121292, -0.26405892, 0.16556135, 0.18657646, 0.1424068, 0.18855052) * g_2;
  result += mat4(0.10960496, 0.10851629, 0.095003806, 0.11053746, 0.09885307, 0.14437789, 0.13191165, 0.17365928, 0.16558935, 0.15473324, 0.21136154, 0.19976667, -0.07267957, -0.11469687, -0.029134216, -0.06817615) * g_3;
  result += mat4(0.10202856, 0.04216857, -0.03959349, -0.09849683, -0.1576996, -0.049997438, -0.1579918, -0.058789205, 0.029792828, -0.07311781, -0.045432188, -0.11312683, 0.24257647, 0.16204113, 0.17869382, 0.16024388) * g_4;
  result += mat4(0.17193612, 0.12692013, 0.13177487, 0.0796725, 0.0797928, 0.08952722, -0.012468046, 0.011071511, -0.068559825, -0.024852324, 0.0526428, 0.07917346, -0.085534215, -0.09591339, 0.04615827, 0.024577664) * g_5;
  result += mat4(-0.14653449, -0.067267366, -0.002524394, 0.086243175, 0.13660401, 0.08039592, 0.09179008, 0.022573143, -0.024744196, 0.09120211, 0.017654825, 0.14114714, -0.16093308, -0.14538004, -0.09950235, -0.111152865) * g_6;
  result += mat4(-0.188637, -0.12968326, -0.1200479, -0.06537649, -0.12589337, -0.106242515, -0.02788782, -0.025949068, 0.04948153, 0.02222735, -0.025291357, -0.12379292, 0.11074645, 0.11902375, -0.00056989543, -0.0024386419) * g_7;
  result += mat4(0.018286629, 0.0072215167, 0.00037828335, 0.0047001047, 0.011478272, 0.041745186, -0.015742473, -0.002282524, -0.03440817, -0.02196847, -0.07838253, -0.07993771, -0.010155526, -0.017590692, 0.027141469, 0.029741213) * g_8;
  result += mat4(0.016512005, 0.004950637, -0.0238836, -0.05587327, -0.03164328, -0.009499985, -0.059880238, -0.061794154, 0.023154303, -0.013266373, 0.04701534, 0.0415862, 0.06357814, 0.033057794, 0.08389772, 0.00035060212) * g_9;
  result += mat4(-0.016403968, -0.012538788, -0.0015746636, -0.004771009, -0.021361275, -0.009695242, 0.020548422, -0.0024130535, 0.07796766, -0.01516671, 0.09961382, 0.042754963, 0.017363647, 0.03729065, -0.004795824, 0.01550197) * g_10;
  result += mat4(-0.0028093113, 0.011869523, -0.02216933, 0.011177349, 0.033342455, -0.021146454, 0.07830085, 0.032490104, -0.03281833, 0.0060484232, -0.04081057, -0.04945058, -0.0056189033, -0.010636801, -0.041949317, -0.025739705) * g_11;
  result += mat4(0.012979897, 0.016758928, -0.049062215, -0.0035748442, 0.0085972, 0.0036381132, -0.0055621094, 0.0041307937, -0.0008907763, -0.0034079372, -0.025680453, -0.015531803, 0.012816766, 0.009977763, -0.016416566, 0.0034859509) * g_12;
  result += mat4(0.021753248, 0.016452711, 0.009833835, 0.0065052663, 0.0014061348, -0.046160888, -0.0132271005, -0.05051269, -0.05746351, -0.0012690664, 0.017191738, 0.018192926, -0.008879476, 0.026354216, -0.012801991, -0.029587373) * g_13;
  result += mat4(-0.04220692, -0.0015560482, -0.0019648245, 0.013402305, -0.018259782, -0.0036008905, 0.0035650074, -0.0019178417, 0.00051580026, 0.027355857, -0.017914988, 0.004937948, -0.046335887, 0.00013612259, 0.030293299, 0.030688645) * g_14;
  result += mat4(-0.036683388, -0.0031274238, -0.026074665, 0.021684237, 0.022639066, 0.0022493738, 0.011508554, -0.0006385944, 0.04890418, 0.020119468, 0.004167364, -0.008356099, -0.008598796, 0.0089028, -0.0029575853, 0.016687104) * g_15;
  result += mat4(0.027207986, 0.0011099194, 0.042383645, -0.015179333, 0.014744431, 0.006148344, 0.005165422, 0.0070196544, 0.030286826, 0.016620956, -0.01611366, -0.00667594, -0.029524863, -0.024751091, -0.013321004, -0.025199674) * g_16;
  result += mat4(0.0027477827, 0.054622147, 0.010154094, 0.025437292, 0.031773083, -0.01055473, 0.022864206, -0.029010754, -0.0029999653, 0.025018329, 0.015316208, 0.027188798, -0.10096525, -0.017268656, 0.0012529213, -0.062078856) * g_17;
  result += mat4(-0.053670805, 0.057336535, -0.037418038, 0.06443577, -0.016027879, -0.058168363, 0.007034215, -0.03390141, -0.0019346164, -0.027947908, 0.021723913, -0.0018286633, 0.030507812, 0.018293543, 0.042917266, 0.033528328) * g_18;
  result += mat4(-0.004559579, 0.029667616, -0.001870353, 0.0378995, -0.017147437, 0.020192018, -0.021574946, 0.031568103, 0.07487145, 0.0032376775, -0.018893708, -0.041981626, 0.054478757, 0.0061423797, 0.041280247, 0.000878061) * g_19;
  result += mat4(0.017076394, 0.023647636, 0.029403262, 0.029923365, 0.08866472, 0.060613394, 0.1314274, -0.04490231, -0.016304834, -0.0062647443, -0.0031828512, -0.03989252, -0.024330825, 0.00741213, -0.04075287, -0.01615817) * g_20;
  result += mat4(0.017866978, 0.017720113, -0.02846163, 0.040761847, -0.0063438355, -0.02347501, 0.029564403, -0.0029562064, 0.12505588, -0.0073986333, 0.11250363, -0.06179967, 0.07854423, 0.08546533, 0.034743227, -0.010757377) * g_21;
  result += mat4(-0.06416677, -0.08344284, 0.030138884, 0.017635904, -0.012087523, 0.014205202, -0.03221233, -0.023834767, -0.091186255, -0.028958676, -0.04724334, 0.00013161585, 0.027391518, 0.1249978, -0.045047652, 0.10737729) * g_22;
  result += mat4(-0.04326348, -0.03543181, -0.029558217, -0.08582413, 0.007812453, 0.014296562, -0.028779754, 0.018517692, -0.063755795, -0.036619596, -0.050809663, 0.005431336, -0.029205568, -0.011827915, -0.031110523, -0.005648626) * g_23;
  result += mat4(0.05499293, -0.10000709, -0.0943537, 0.16143042, -0.019952895, -0.0039807972, -0.014841254, 0.0320363, -0.065173544, -0.049425576, -0.023904482, 0.03759679, -0.03207411, -0.047782745, 0.01352581, 0.008140566) * g_24;
  result += mat4(0.055923894, -0.025134467, 0.029583648, 0.04096879, 0.027551858, -0.14995384, 0.06467113, -0.11633077, -0.01563784, -0.026909819, -0.06292879, -0.078409635, -0.009081105, -0.015533088, 0.019585673, 0.04334208) * g_25;
  result += mat4(-0.021717606, 0.042464726, 0.02743202, -0.07388838, 0.03460472, 0.0038285658, 0.099842004, -0.098247, 0.13276267, -0.020793032, -0.008603039, -0.051913783, 0.12959045, 0.14735717, -0.10888226, -0.10263746) * g_26;
  result += mat4(-0.16819532, 0.141579, -0.062480718, -0.021918943, 0.06348125, 0.06849444, 0.03888676, 0.027375204, -0.08194279, -0.012574497, 0.13523251, 0.13739482, -0.047547445, -0.058767617, 0.07009549, 0.028136581) * g_27;
  result += vec4(0.069033325, 0.040207114, 0.027286075, 0.0065334598);
  gl_FragColor = result;
}
