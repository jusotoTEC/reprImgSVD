function F = objectiveFunction(x_1_1,x_1_2,x_1_3,x_1_4,x_1_5,x_1_6,x_1_7,x_1_8,x_1_9,x_2_1,x_2_2,x_2_3,x_2_4,x_2_5,x_2_6,x_2_7,x_2_8,x_2_9,x_3_1,x_3_2,x_3_3,x_3_4,x_3_5,x_3_6,x_3_7,x_3_8,x_3_9,x_4_1,x_4_2,x_4_3,x_4_4,x_4_5,x_4_6,x_4_7,x_4_8,x_4_9,x_5_1,x_5_2,x_5_3,x_5_4,x_5_5,x_5_6,x_5_7,x_5_8,x_5_9,x_6_1,x_6_2,x_6_3,x_6_4,x_6_5,x_6_6,x_6_7,x_6_8,x_6_9,x_7_1,x_7_2,x_7_3,x_7_4,x_7_5,x_7_6,x_7_7,x_7_8,x_7_9,x_8_1,x_8_2,x_8_3,x_8_4,x_8_5,x_8_6,x_8_7,x_8_8,x_8_9,x_9_1,x_9_2,x_9_3,x_9_4,x_9_5,x_9_6,x_9_7,x_9_8,x_9_9,x_10_1,x_10_2,x_10_3,x_10_4,x_10_5,x_10_6,x_10_7,x_10_8,x_10_9)
%OBJECTIVEFUNCTION
%    F = OBJECTIVEFUNCTION(X_1_1,X_1_2,X_1_3,X_1_4,X_1_5,X_1_6,X_1_7,X_1_8,X_1_9,X_2_1,X_2_2,X_2_3,X_2_4,X_2_5,X_2_6,X_2_7,X_2_8,X_2_9,X_3_1,X_3_2,X_3_3,X_3_4,X_3_5,X_3_6,X_3_7,X_3_8,X_3_9,X_4_1,X_4_2,X_4_3,X_4_4,X_4_5,X_4_6,X_4_7,X_4_8,X_4_9,X_5_1,X_5_2,X_5_3,X_5_4,X_5_5,X_5_6,X_5_7,X_5_8,X_5_9,X_6_1,X_6_2,X_6_3,X_6_4,X_6_5,X_6_6,X_6_7,X_6_8,X_6_9,X_7_1,X_7_2,X_7_3,X_7_4,X_7_5,X_7_6,X_7_7,X_7_8,X_7_9,X_8_1,X_8_2,X_8_3,X_8_4,X_8_5,X_8_6,X_8_7,X_8_8,X_8_9,X_9_1,X_9_2,X_9_3,X_9_4,X_9_5,X_9_6,X_9_7,X_9_8,X_9_9,X_10_1,X_10_2,X_10_3,X_10_4,X_10_5,X_10_6,X_10_7,X_10_8,X_10_9)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    31-Jul-2023 13:47:57

t2 = -x_3_1;
t3 = -x_3_2;
t4 = -x_3_3;
t5 = -x_3_4;
t6 = -x_3_5;
t7 = -x_3_6;
t8 = -x_3_7;
t9 = -x_3_8;
t10 = -x_3_9;
t11 = -x_4_1;
t12 = -x_4_2;
t13 = -x_4_3;
t14 = -x_4_4;
t15 = -x_4_5;
t16 = -x_4_6;
t17 = -x_4_7;
t18 = -x_4_8;
t19 = -x_4_9;
t20 = -x_5_1;
t21 = -x_5_2;
t22 = -x_5_3;
t23 = -x_5_4;
t24 = -x_5_5;
t25 = -x_5_6;
t26 = -x_5_7;
t27 = -x_5_8;
t28 = -x_5_9;
t29 = -x_6_1;
t30 = -x_6_2;
t31 = -x_6_3;
t32 = -x_6_4;
t33 = -x_6_5;
t34 = -x_6_6;
t35 = -x_6_7;
t36 = -x_6_8;
t37 = -x_6_9;
t38 = -x_7_1;
t39 = -x_7_2;
t40 = -x_7_3;
t41 = -x_7_4;
t42 = -x_7_5;
t43 = -x_7_6;
t44 = -x_7_7;
t45 = -x_7_8;
t46 = -x_7_9;
t47 = -x_8_1;
t48 = -x_8_2;
t49 = -x_8_3;
t50 = -x_8_4;
t51 = -x_8_5;
t52 = -x_8_6;
t53 = -x_8_7;
t54 = -x_8_8;
t55 = -x_8_9;
t56 = -x_9_1;
t57 = -x_9_2;
t58 = -x_9_3;
t59 = -x_9_4;
t60 = -x_9_5;
t61 = -x_9_6;
t62 = -x_9_7;
t63 = -x_9_8;
t64 = -x_9_9;
t65 = -x_10_1;
t66 = -x_10_2;
t67 = -x_10_3;
t68 = -x_10_4;
t69 = -x_10_5;
t70 = -x_10_6;
t71 = -x_10_7;
t72 = -x_10_8;
t73 = -x_10_9;
mt1 = [(x_1_1-x_2_1).^2+(x_1_2-x_2_2).^2+(x_1_3-x_2_3).^2+(x_1_4-x_2_4).^2+(x_1_5-x_2_5).^2+(x_1_6-x_2_6).^2+(x_1_7-x_2_7).^2+(x_1_8-x_2_8).^2+(x_1_9-x_2_9).^2-5.904094920518341e-1,(t2+x_1_1).^2+(t3+x_1_2).^2+(t4+x_1_3).^2+(t5+x_1_4).^2+(t6+x_1_5).^2+(t7+x_1_6).^2+(t8+x_1_7).^2+(t9+x_1_8).^2+(t10+x_1_9).^2-5.079601675110575e-1];
mt2 = [(t11+x_1_1).^2+(t12+x_1_2).^2+(t13+x_1_3).^2+(t14+x_1_4).^2+(t15+x_1_5).^2+(t16+x_1_6).^2+(t17+x_1_7).^2+(t18+x_1_8).^2+(t19+x_1_9).^2-6.078071478323966e-1,(t20+x_1_1).^2+(t21+x_1_2).^2+(t22+x_1_3).^2+(t23+x_1_4).^2+(t24+x_1_5).^2+(t25+x_1_6).^2+(t26+x_1_7).^2+(t27+x_1_8).^2+(t28+x_1_9).^2-4.464175600490572e-1];
mt3 = [(t29+x_1_1).^2+(t30+x_1_2).^2+(t31+x_1_3).^2+(t32+x_1_4).^2+(t33+x_1_5).^2+(t34+x_1_6).^2+(t35+x_1_7).^2+(t36+x_1_8).^2+(t37+x_1_9).^2-5.678819502685148e-1,(t38+x_1_1).^2+(t39+x_1_2).^2+(t40+x_1_3).^2+(t41+x_1_4).^2+(t42+x_1_5).^2+(t43+x_1_6).^2+(t44+x_1_7).^2+(t45+x_1_8).^2+(t46+x_1_9).^2-5.966504347762864e-1];
mt4 = [(t47+x_1_1).^2+(t48+x_1_2).^2+(t49+x_1_3).^2+(t50+x_1_4).^2+(t51+x_1_5).^2+(t52+x_1_6).^2+(t53+x_1_7).^2+(t54+x_1_8).^2+(t55+x_1_9).^2-5.651886357235549e-1,(t56+x_1_1).^2+(t57+x_1_2).^2+(t58+x_1_3).^2+(t59+x_1_4).^2+(t60+x_1_5).^2+(t61+x_1_6).^2+(t62+x_1_7).^2+(t63+x_1_8).^2+(t64+x_1_9).^2-5.25130518110238e-1];
mt5 = [(t65+x_1_1).^2+(t66+x_1_2).^2+(t67+x_1_3).^2+(t68+x_1_4).^2+(t69+x_1_5).^2+(t70+x_1_6).^2+(t71+x_1_7).^2+(t72+x_1_8).^2+(t73+x_1_9).^2-5.527351660510799e-1,(t2+x_2_1).^2+(t3+x_2_2).^2+(t4+x_2_3).^2+(t5+x_2_4).^2+(t6+x_2_5).^2+(t7+x_2_6).^2+(t8+x_2_7).^2+(t9+x_2_8).^2+(t10+x_2_9).^2-6.175959015738092e-1];
mt6 = [(t11+x_2_1).^2+(t12+x_2_2).^2+(t13+x_2_3).^2+(t14+x_2_4).^2+(t15+x_2_5).^2+(t16+x_2_6).^2+(t17+x_2_7).^2+(t18+x_2_8).^2+(t19+x_2_9).^2-6.905764819590561e-1,(t20+x_2_1).^2+(t21+x_2_2).^2+(t22+x_2_3).^2+(t23+x_2_4).^2+(t24+x_2_5).^2+(t25+x_2_6).^2+(t26+x_2_7).^2+(t27+x_2_8).^2+(t28+x_2_9).^2-5.340244934285001e-1];
mt7 = [(t29+x_2_1).^2+(t30+x_2_2).^2+(t31+x_2_3).^2+(t32+x_2_4).^2+(t33+x_2_5).^2+(t34+x_2_6).^2+(t35+x_2_7).^2+(t36+x_2_8).^2+(t37+x_2_9).^2-6.585253520726241e-1,(t38+x_2_1).^2+(t39+x_2_2).^2+(t40+x_2_3).^2+(t41+x_2_4).^2+(t42+x_2_5).^2+(t43+x_2_6).^2+(t44+x_2_7).^2+(t45+x_2_8).^2+(t46+x_2_9).^2-6.643117155359224e-1];
mt8 = [(t47+x_2_1).^2+(t48+x_2_2).^2+(t49+x_2_3).^2+(t50+x_2_4).^2+(t51+x_2_5).^2+(t52+x_2_6).^2+(t53+x_2_7).^2+(t54+x_2_8).^2+(t55+x_2_9).^2-6.407249476887737e-1,(t56+x_2_1).^2+(t57+x_2_2).^2+(t58+x_2_3).^2+(t59+x_2_4).^2+(t60+x_2_5).^2+(t61+x_2_6).^2+(t62+x_2_7).^2+(t63+x_2_8).^2+(t64+x_2_9).^2-5.81284737323627e-1];
mt9 = [(t65+x_2_1).^2+(t66+x_2_2).^2+(t67+x_2_3).^2+(t68+x_2_4).^2+(t69+x_2_5).^2+(t70+x_2_6).^2+(t71+x_2_7).^2+(t72+x_2_8).^2+(t73+x_2_9).^2-6.730928966259683e-1,(t11+x_3_1).^2+(t12+x_3_2).^2+(t13+x_3_3).^2+(t14+x_3_4).^2+(t15+x_3_5).^2+(t16+x_3_6).^2+(t17+x_3_7).^2+(t18+x_3_8).^2+(t19+x_3_9).^2-6.190132686820341e-1];
mt10 = [(t20+x_3_1).^2+(t21+x_3_2).^2+(t22+x_3_3).^2+(t23+x_3_4).^2+(t24+x_3_5).^2+(t25+x_3_6).^2+(t26+x_3_7).^2+(t27+x_3_8).^2+(t28+x_3_9).^2-5.029228420719181e-1,(t29+x_3_1).^2+(t30+x_3_2).^2+(t31+x_3_3).^2+(t32+x_3_4).^2+(t33+x_3_5).^2+(t34+x_3_6).^2+(t35+x_3_7).^2+(t36+x_3_8).^2+(t37+x_3_9).^2-5.800380769767599e-1];
mt11 = [(t38+x_3_1).^2+(t39+x_3_2).^2+(t40+x_3_3).^2+(t41+x_3_4).^2+(t42+x_3_5).^2+(t43+x_3_6).^2+(t44+x_3_7).^2+(t45+x_3_8).^2+(t46+x_3_9).^2-5.926845712865099e-1,(t47+x_3_1).^2+(t48+x_3_2).^2+(t49+x_3_3).^2+(t50+x_3_4).^2+(t51+x_3_5).^2+(t52+x_3_6).^2+(t53+x_3_7).^2+(t54+x_3_8).^2+(t55+x_3_9).^2-5.540730469309039e-1];
mt12 = [(t56+x_3_1).^2+(t57+x_3_2).^2+(t58+x_3_3).^2+(t59+x_3_4).^2+(t60+x_3_5).^2+(t61+x_3_6).^2+(t62+x_3_7).^2+(t63+x_3_8).^2+(t64+x_3_9).^2-5.360668905288762e-1,(t65+x_3_1).^2+(t66+x_3_2).^2+(t67+x_3_3).^2+(t68+x_3_4).^2+(t69+x_3_5).^2+(t70+x_3_6).^2+(t71+x_3_7).^2+(t72+x_3_8).^2+(t73+x_3_9).^2-6.118076069842444e-1];
mt13 = [(t20+x_4_1).^2+(t21+x_4_2).^2+(t22+x_4_3).^2+(t23+x_4_4).^2+(t24+x_4_5).^2+(t25+x_4_6).^2+(t26+x_4_7).^2+(t27+x_4_8).^2+(t28+x_4_9).^2-5.095568513874654e-1,(t29+x_4_1).^2+(t30+x_4_2).^2+(t31+x_4_3).^2+(t32+x_4_4).^2+(t33+x_4_5).^2+(t34+x_4_6).^2+(t35+x_4_7).^2+(t36+x_4_8).^2+(t37+x_4_9).^2-6.876057269411641e-1];
mt14 = [(t38+x_4_1).^2+(t39+x_4_2).^2+(t40+x_4_3).^2+(t41+x_4_4).^2+(t42+x_4_5).^2+(t43+x_4_6).^2+(t44+x_4_7).^2+(t45+x_4_8).^2+(t46+x_4_9).^2-7.525896472784225e-1,(t47+x_4_1).^2+(t48+x_4_2).^2+(t49+x_4_3).^2+(t50+x_4_4).^2+(t51+x_4_5).^2+(t52+x_4_6).^2+(t53+x_4_7).^2+(t54+x_4_8).^2+(t55+x_4_9).^2-7.348684307611421e-1];
mt15 = [(t56+x_4_1).^2+(t57+x_4_2).^2+(t58+x_4_3).^2+(t59+x_4_4).^2+(t60+x_4_5).^2+(t61+x_4_6).^2+(t62+x_4_7).^2+(t63+x_4_8).^2+(t64+x_4_9).^2-6.447822245539286e-1,(t65+x_4_1).^2+(t66+x_4_2).^2+(t67+x_4_3).^2+(t68+x_4_4).^2+(t69+x_4_5).^2+(t70+x_4_6).^2+(t71+x_4_7).^2+(t72+x_4_8).^2+(t73+x_4_9).^2-6.942450527964111e-1];
mt16 = [(t29+x_5_1).^2+(t30+x_5_2).^2+(t31+x_5_3).^2+(t32+x_5_4).^2+(t33+x_5_5).^2+(t34+x_5_6).^2+(t35+x_5_7).^2+(t36+x_5_8).^2+(t37+x_5_9).^2-5.003970090133911e-1,(t38+x_5_1).^2+(t39+x_5_2).^2+(t40+x_5_3).^2+(t41+x_5_4).^2+(t42+x_5_5).^2+(t43+x_5_6).^2+(t44+x_5_7).^2+(t45+x_5_8).^2+(t46+x_5_9).^2-4.864476935879581e-1];
mt17 = [(t47+x_5_1).^2+(t48+x_5_2).^2+(t49+x_5_3).^2+(t50+x_5_4).^2+(t51+x_5_5).^2+(t52+x_5_6).^2+(t53+x_5_7).^2+(t54+x_5_8).^2+(t55+x_5_9).^2-5.277440570230114e-1,(t56+x_5_1).^2+(t57+x_5_2).^2+(t58+x_5_3).^2+(t59+x_5_4).^2+(t60+x_5_5).^2+(t61+x_5_6).^2+(t62+x_5_7).^2+(t63+x_5_8).^2+(t64+x_5_9).^2-4.975609936321117e-1];
mt18 = [(t65+x_5_1).^2+(t66+x_5_2).^2+(t67+x_5_3).^2+(t68+x_5_4).^2+(t69+x_5_5).^2+(t70+x_5_6).^2+(t71+x_5_7).^2+(t72+x_5_8).^2+(t73+x_5_9).^2-5.324596844295145e-1,(t38+x_6_1).^2+(t39+x_6_2).^2+(t40+x_6_3).^2+(t41+x_6_4).^2+(t42+x_6_5).^2+(t43+x_6_6).^2+(t44+x_6_7).^2+(t45+x_6_8).^2+(t46+x_6_9).^2-7.181188460325145e-1];
mt19 = [(t47+x_6_1).^2+(t48+x_6_2).^2+(t49+x_6_3).^2+(t50+x_6_4).^2+(t51+x_6_5).^2+(t52+x_6_6).^2+(t53+x_6_7).^2+(t54+x_6_8).^2+(t55+x_6_9).^2-6.918787345001483e-1,(t56+x_6_1).^2+(t57+x_6_2).^2+(t58+x_6_3).^2+(t59+x_6_4).^2+(t60+x_6_5).^2+(t61+x_6_6).^2+(t62+x_6_7).^2+(t63+x_6_8).^2+(t64+x_6_9).^2-5.992639754193638e-1];
mt20 = [(t65+x_6_1).^2+(t66+x_6_2).^2+(t67+x_6_3).^2+(t68+x_6_4).^2+(t69+x_6_5).^2+(t70+x_6_6).^2+(t71+x_6_7).^2+(t72+x_6_8).^2+(t73+x_6_9).^2-7.242924750109507e-1,(t47+x_7_1).^2+(t48+x_7_2).^2+(t49+x_7_3).^2+(t50+x_7_4).^2+(t51+x_7_5).^2+(t52+x_7_6).^2+(t53+x_7_7).^2+(t54+x_7_8).^2+(t55+x_7_9).^2-7.079496268463691e-1];
mt21 = [(t56+x_7_1).^2+(t57+x_7_2).^2+(t58+x_7_3).^2+(t59+x_7_4).^2+(t60+x_7_5).^2+(t61+x_7_6).^2+(t62+x_7_7).^2+(t63+x_7_8).^2+(t64+x_7_9).^2-6.310983954032059e-1,(t65+x_7_1).^2+(t66+x_7_2).^2+(t67+x_7_3).^2+(t68+x_7_4).^2+(t69+x_7_5).^2+(t70+x_7_6).^2+(t71+x_7_7).^2+(t72+x_7_8).^2+(t73+x_7_9).^2-6.880115962472331e-1];
mt22 = [(t56+x_8_1).^2+(t57+x_8_2).^2+(t58+x_8_3).^2+(t59+x_8_4).^2+(t60+x_8_5).^2+(t61+x_8_6).^2+(t62+x_8_7).^2+(t63+x_8_8).^2+(t64+x_8_9).^2-6.297403460205502e-1,(t65+x_8_1).^2+(t66+x_8_2).^2+(t67+x_8_3).^2+(t68+x_8_4).^2+(t69+x_8_5).^2+(t70+x_8_6).^2+(t71+x_8_7).^2+(t72+x_8_8).^2+(t73+x_8_9).^2-6.910320856400315e-1];
mt23 = [(t65+x_9_1).^2+(t66+x_9_2).^2+(t67+x_9_3).^2+(t68+x_9_4).^2+(t69+x_9_5).^2+(t70+x_9_6).^2+(t71+x_9_7).^2+(t72+x_9_8).^2+(t73+x_9_9).^2-5.932397189466917e-1];
F = reshape([mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9,mt10,mt11,mt12,mt13,mt14,mt15,mt16,mt17,mt18,mt19,mt20,mt21,mt22,mt23],45,1);
