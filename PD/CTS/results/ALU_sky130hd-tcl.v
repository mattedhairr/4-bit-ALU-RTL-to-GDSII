module ALU (carry_out,
    clk,
    A,
    B,
    opcode,
    result);
 output carry_out;
 input clk;
 input [3:0] A;
 input [3:0] B;
 input [2:0] opcode;
 output [3:0] result;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire [3:0] _114_;

 sky130_fd_sc_hd__inv_1 _115_ (.A(B[3]),
    .Y(_033_));
 sky130_fd_sc_hd__inv_1 _116_ (.A(B[2]),
    .Y(_034_));
 sky130_fd_sc_hd__inv_1 _117_ (.A(A[2]),
    .Y(_035_));
 sky130_fd_sc_hd__clkinv_1 _118_ (.A(B[1]),
    .Y(_036_));
 sky130_fd_sc_hd__clkinvlp_4 _119_ (.A(B[0]),
    .Y(_037_));
 sky130_fd_sc_hd__nor2_1 _120_ (.A(opcode[2]),
    .B(opcode[1]),
    .Y(_038_));
 sky130_fd_sc_hd__nor3_2 _121_ (.A(opcode[2]),
    .B(opcode[1]),
    .C(opcode[0]),
    .Y(_039_));
 sky130_fd_sc_hd__nand2_1 _122_ (.A(A[3]),
    .B(B[3]),
    .Y(_040_));
 sky130_fd_sc_hd__nand2_1 _123_ (.A(B[2]),
    .B(A[2]),
    .Y(_041_));
 sky130_fd_sc_hd__xnor2_1 _124_ (.A(B[2]),
    .B(A[2]),
    .Y(_042_));
 sky130_fd_sc_hd__nand2_2 _125_ (.A(B[1]),
    .B(A[1]),
    .Y(_043_));
 sky130_fd_sc_hd__nor2_1 _126_ (.A(B[1]),
    .B(A[1]),
    .Y(_044_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _127_ (.A(_043_),
    .SLEEP(_044_),
    .X(_045_));
 sky130_fd_sc_hd__nand2_1 _128_ (.A(B[0]),
    .B(A[0]),
    .Y(_046_));
 sky130_fd_sc_hd__nand3_1 _129_ (.A(B[0]),
    .B(A[0]),
    .C(_045_),
    .Y(_047_));
 sky130_fd_sc_hd__a21o_1 _130_ (.A1(_043_),
    .A2(_047_),
    .B1(_042_),
    .X(_048_));
 sky130_fd_sc_hd__nand2_1 _131_ (.A(_041_),
    .B(_048_),
    .Y(_049_));
 sky130_fd_sc_hd__a21oi_1 _132_ (.A1(A[3]),
    .A2(B[3]),
    .B1(_049_),
    .Y(_050_));
 sky130_fd_sc_hd__o21ai_0 _133_ (.A1(A[3]),
    .A2(B[3]),
    .B1(_039_),
    .Y(_051_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _134_ (.A(A[1]),
    .SLEEP(B[1]),
    .X(_052_));
 sky130_fd_sc_hd__nor2_1 _135_ (.A(_037_),
    .B(A[0]),
    .Y(_053_));
 sky130_fd_sc_hd__nor2_1 _136_ (.A(_045_),
    .B(_053_),
    .Y(_054_));
 sky130_fd_sc_hd__o21ai_1 _137_ (.A1(_052_),
    .A2(_054_),
    .B1(_042_),
    .Y(_055_));
 sky130_fd_sc_hd__o21ai_1 _138_ (.A1(B[2]),
    .A2(_035_),
    .B1(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__nor2_1 _139_ (.A(B[3]),
    .B(B[2]),
    .Y(_057_));
 sky130_fd_sc_hd__nand2_1 _140_ (.A(A[3]),
    .B(B[0]),
    .Y(_058_));
 sky130_fd_sc_hd__nor3_1 _141_ (.A(B[3]),
    .B(B[2]),
    .C(B[1]),
    .Y(_059_));
 sky130_fd_sc_hd__nand3_1 _142_ (.A(A[3]),
    .B(B[0]),
    .C(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__o221ai_4 _143_ (.A1(A[3]),
    .A2(_036_),
    .B1(_037_),
    .B2(A[2]),
    .C1(_057_),
    .Y(_061_));
 sky130_fd_sc_hd__and4_1 _144_ (.A(A[3]),
    .B(_036_),
    .C(_037_),
    .D(_057_),
    .X(_062_));
 sky130_fd_sc_hd__a31oi_1 _145_ (.A1(A[3]),
    .A2(_060_),
    .A3(_061_),
    .B1(_062_),
    .Y(_063_));
 sky130_fd_sc_hd__nor2_1 _146_ (.A(A[3]),
    .B(_033_),
    .Y(_064_));
 sky130_fd_sc_hd__nand2_1 _147_ (.A(opcode[0]),
    .B(_038_),
    .Y(_065_));
 sky130_fd_sc_hd__maj3_1 _148_ (.A(A[3]),
    .B(_033_),
    .C(_056_),
    .X(_066_));
 sky130_fd_sc_hd__o22ai_1 _149_ (.A1(_050_),
    .A2(_051_),
    .B1(_065_),
    .B2(_066_),
    .Y(_113_));
 sky130_fd_sc_hd__o21ai_1 _150_ (.A1(_037_),
    .A2(_061_),
    .B1(A[2]),
    .Y(_067_));
 sky130_fd_sc_hd__nor2_1 _151_ (.A(A[1]),
    .B(_037_),
    .Y(_068_));
 sky130_fd_sc_hd__xnor2_1 _152_ (.A(_036_),
    .B(_067_),
    .Y(_069_));
 sky130_fd_sc_hd__maj3_1 _153_ (.A(B[1]),
    .B(_067_),
    .C(_068_),
    .X(_070_));
 sky130_fd_sc_hd__o21ai_1 _154_ (.A1(B[2]),
    .A2(_070_),
    .B1(_063_),
    .Y(_071_));
 sky130_fd_sc_hd__a21oi_1 _155_ (.A1(B[2]),
    .A2(_070_),
    .B1(B[3]),
    .Y(_072_));
 sky130_fd_sc_hd__nand2_1 _156_ (.A(_071_),
    .B(_072_),
    .Y(_073_));
 sky130_fd_sc_hd__nand3_1 _157_ (.A(B[0]),
    .B(_071_),
    .C(_072_),
    .Y(_074_));
 sky130_fd_sc_hd__xor2_1 _158_ (.A(A[1]),
    .B(_074_),
    .X(_075_));
 sky130_fd_sc_hd__nand2_1 _159_ (.A(B[1]),
    .B(_075_),
    .Y(_076_));
 sky130_fd_sc_hd__o211ai_1 _160_ (.A1(_036_),
    .A2(A[1]),
    .B1(_037_),
    .C1(A[0]),
    .Y(_077_));
 sky130_fd_sc_hd__xnor2_1 _161_ (.A(_068_),
    .B(_069_),
    .Y(_078_));
 sky130_fd_sc_hd__and3_1 _162_ (.A(_071_),
    .B(_072_),
    .C(_078_),
    .X(_079_));
 sky130_fd_sc_hd__a21oi_1 _163_ (.A1(_071_),
    .A2(_072_),
    .B1(_067_),
    .Y(_080_));
 sky130_fd_sc_hd__o21ai_0 _164_ (.A1(_079_),
    .A2(_080_),
    .B1(_034_),
    .Y(_081_));
 sky130_fd_sc_hd__xnor2_1 _165_ (.A(B[2]),
    .B(_070_),
    .Y(_082_));
 sky130_fd_sc_hd__nor2_1 _166_ (.A(B[3]),
    .B(_063_),
    .Y(_083_));
 sky130_fd_sc_hd__a21oi_1 _167_ (.A1(_082_),
    .A2(_083_),
    .B1(_064_),
    .Y(_084_));
 sky130_fd_sc_hd__nor3_1 _168_ (.A(_034_),
    .B(_079_),
    .C(_080_),
    .Y(_085_));
 sky130_fd_sc_hd__o31a_1 _169_ (.A1(_034_),
    .A2(_079_),
    .A3(_080_),
    .B1(_084_),
    .X(_086_));
 sky130_fd_sc_hd__and2_0 _170_ (.A(_081_),
    .B(_086_),
    .X(_087_));
 sky130_fd_sc_hd__o2111ai_1 _171_ (.A1(B[1]),
    .A2(_075_),
    .B1(_077_),
    .C1(_081_),
    .D1(_086_),
    .Y(_088_));
 sky130_fd_sc_hd__a21oi_1 _172_ (.A1(_084_),
    .A2(_085_),
    .B1(_064_),
    .Y(_089_));
 sky130_fd_sc_hd__nor2_1 _173_ (.A(B[0]),
    .B(A[0]),
    .Y(_090_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _174_ (.A(_046_),
    .SLEEP(_090_),
    .X(_091_));
 sky130_fd_sc_hd__o21ba_1 _175_ (.A1(B[1]),
    .A2(_075_),
    .B1_N(_091_),
    .X(_092_));
 sky130_fd_sc_hd__a32oi_1 _176_ (.A1(_076_),
    .A2(_087_),
    .A3(_092_),
    .B1(_089_),
    .B2(_088_),
    .Y(_093_));
 sky130_fd_sc_hd__nand2_1 _177_ (.A(opcode[1]),
    .B(opcode[0]),
    .Y(_094_));
 sky130_fd_sc_hd__a211o_1 _178_ (.A1(_037_),
    .A2(_059_),
    .B1(_094_),
    .C1(opcode[2]),
    .X(_095_));
 sky130_fd_sc_hd__or3b_1 _179_ (.A(opcode[2]),
    .B(opcode[0]),
    .C_N(opcode[1]),
    .X(_096_));
 sky130_fd_sc_hd__or3b_1 _180_ (.A(opcode[1]),
    .B(opcode[0]),
    .C_N(opcode[2]),
    .X(_097_));
 sky130_fd_sc_hd__a21oi_1 _181_ (.A1(_096_),
    .A2(_097_),
    .B1(_046_),
    .Y(_098_));
 sky130_fd_sc_hd__nand3b_2 _182_ (.A_N(opcode[0]),
    .B(opcode[1]),
    .C(opcode[2]),
    .Y(_099_));
 sky130_fd_sc_hd__nand3b_1 _183_ (.A_N(opcode[1]),
    .B(opcode[0]),
    .C(opcode[2]),
    .Y(_100_));
 sky130_fd_sc_hd__inv_1 _184_ (.A(_100_),
    .Y(_101_));
 sky130_fd_sc_hd__o22ai_1 _185_ (.A1(A[0]),
    .A2(_099_),
    .B1(_100_),
    .B2(_090_),
    .Y(_102_));
 sky130_fd_sc_hd__a211oi_1 _186_ (.A1(_038_),
    .A2(_091_),
    .B1(_098_),
    .C1(_102_),
    .Y(_103_));
 sky130_fd_sc_hd__o21ai_0 _187_ (.A1(_093_),
    .A2(_095_),
    .B1(_103_),
    .Y(_114_[0]));
 sky130_fd_sc_hd__a22oi_1 _188_ (.A1(A[1]),
    .A2(B[0]),
    .B1(A[0]),
    .B2(B[1]),
    .Y(_104_));
 sky130_fd_sc_hd__nor2_1 _189_ (.A(_096_),
    .B(_104_),
    .Y(_105_));
 sky130_fd_sc_hd__o21ai_0 _190_ (.A1(_043_),
    .A2(_046_),
    .B1(_105_),
    .Y(_106_));
 sky130_fd_sc_hd__and2_0 _191_ (.A(_045_),
    .B(_053_),
    .X(_107_));
 sky130_fd_sc_hd__nor3_1 _192_ (.A(_054_),
    .B(_065_),
    .C(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__nand2b_1 _193_ (.A_N(_045_),
    .B(_046_),
    .Y(_109_));
 sky130_fd_sc_hd__o221ai_1 _194_ (.A1(A[1]),
    .A2(_099_),
    .B1(_100_),
    .B2(_044_),
    .C1(_106_),
    .Y(_110_));
 sky130_fd_sc_hd__a311oi_1 _195_ (.A1(_039_),
    .A2(_047_),
    .A3(_109_),
    .B1(_110_),
    .C1(_108_),
    .Y(_111_));
 sky130_fd_sc_hd__o221ai_1 _196_ (.A1(_073_),
    .A2(_095_),
    .B1(_097_),
    .B2(_043_),
    .C1(_111_),
    .Y(_114_[1]));
 sky130_fd_sc_hd__nand2_1 _197_ (.A(B[2]),
    .B(A[0]),
    .Y(_112_));
 sky130_fd_sc_hd__nand2_1 _198_ (.A(A[2]),
    .B(B[0]),
    .Y(_000_));
 sky130_fd_sc_hd__nand2_1 _199_ (.A(A[2]),
    .B(B[1]),
    .Y(_001_));
 sky130_fd_sc_hd__xnor2_1 _200_ (.A(_043_),
    .B(_000_),
    .Y(_002_));
 sky130_fd_sc_hd__xnor2_1 _201_ (.A(_112_),
    .B(_002_),
    .Y(_003_));
 sky130_fd_sc_hd__nor3_1 _202_ (.A(_043_),
    .B(_046_),
    .C(_003_),
    .Y(_004_));
 sky130_fd_sc_hd__o21ai_0 _203_ (.A1(_043_),
    .A2(_046_),
    .B1(_003_),
    .Y(_005_));
 sky130_fd_sc_hd__nor2_1 _204_ (.A(_096_),
    .B(_004_),
    .Y(_006_));
 sky130_fd_sc_hd__nor3_1 _205_ (.A(_042_),
    .B(_052_),
    .C(_054_),
    .Y(_007_));
 sky130_fd_sc_hd__nand3_1 _206_ (.A(opcode[0]),
    .B(_038_),
    .C(_055_),
    .Y(_008_));
 sky130_fd_sc_hd__nand3_1 _207_ (.A(_042_),
    .B(_043_),
    .C(_047_),
    .Y(_009_));
 sky130_fd_sc_hd__o21ai_0 _208_ (.A1(B[2]),
    .A2(A[2]),
    .B1(_101_),
    .Y(_010_));
 sky130_fd_sc_hd__o221ai_1 _209_ (.A1(_041_),
    .A2(_097_),
    .B1(_099_),
    .B2(A[2]),
    .C1(_010_),
    .Y(_011_));
 sky130_fd_sc_hd__a31oi_1 _210_ (.A1(_039_),
    .A2(_048_),
    .A3(_009_),
    .B1(_011_),
    .Y(_012_));
 sky130_fd_sc_hd__o21ai_0 _211_ (.A1(_007_),
    .A2(_008_),
    .B1(_012_),
    .Y(_013_));
 sky130_fd_sc_hd__a21oi_1 _212_ (.A1(_005_),
    .A2(_006_),
    .B1(_013_),
    .Y(_014_));
 sky130_fd_sc_hd__o21ai_0 _213_ (.A1(_061_),
    .A2(_095_),
    .B1(_014_),
    .Y(_114_[2]));
 sky130_fd_sc_hd__and3_1 _214_ (.A(_039_),
    .B(_041_),
    .C(_048_),
    .X(_015_));
 sky130_fd_sc_hd__a31oi_1 _215_ (.A1(opcode[0]),
    .A2(_038_),
    .A3(_056_),
    .B1(_015_),
    .Y(_016_));
 sky130_fd_sc_hd__a21oi_1 _216_ (.A1(A[3]),
    .A2(B[3]),
    .B1(_016_),
    .Y(_017_));
 sky130_fd_sc_hd__o22ai_1 _217_ (.A1(A[3]),
    .A2(B[3]),
    .B1(_101_),
    .B2(_017_),
    .Y(_018_));
 sky130_fd_sc_hd__maj3_1 _218_ (.A(_043_),
    .B(_112_),
    .C(_000_),
    .X(_019_));
 sky130_fd_sc_hd__nand2_1 _219_ (.A(B[3]),
    .B(A[0]),
    .Y(_020_));
 sky130_fd_sc_hd__nand2_1 _220_ (.A(B[2]),
    .B(A[1]),
    .Y(_021_));
 sky130_fd_sc_hd__xnor2_1 _221_ (.A(_020_),
    .B(_021_),
    .Y(_022_));
 sky130_fd_sc_hd__xor2_1 _222_ (.A(_058_),
    .B(_001_),
    .X(_023_));
 sky130_fd_sc_hd__xnor2_1 _223_ (.A(_022_),
    .B(_023_),
    .Y(_024_));
 sky130_fd_sc_hd__xnor2_1 _224_ (.A(_019_),
    .B(_024_),
    .Y(_025_));
 sky130_fd_sc_hd__xnor2_1 _225_ (.A(_004_),
    .B(_025_),
    .Y(_026_));
 sky130_fd_sc_hd__nand2_1 _226_ (.A(_039_),
    .B(_049_),
    .Y(_027_));
 sky130_fd_sc_hd__o21ai_0 _227_ (.A1(_056_),
    .A2(_065_),
    .B1(_027_),
    .Y(_028_));
 sky130_fd_sc_hd__xnor2_1 _228_ (.A(A[3]),
    .B(B[3]),
    .Y(_029_));
 sky130_fd_sc_hd__o22ai_1 _229_ (.A1(_040_),
    .A2(_097_),
    .B1(_099_),
    .B2(A[3]),
    .Y(_030_));
 sky130_fd_sc_hd__nor3_1 _230_ (.A(opcode[2]),
    .B(_060_),
    .C(_094_),
    .Y(_031_));
 sky130_fd_sc_hd__a211oi_1 _231_ (.A1(_028_),
    .A2(_029_),
    .B1(_030_),
    .C1(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__o211ai_1 _232_ (.A1(_096_),
    .A2(_026_),
    .B1(_032_),
    .C1(_018_),
    .Y(_114_[3]));
 sky130_fd_sc_hd__dfxtp_1 _233_ (.D(_114_[0]),
    .Q(result[0]),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 _234_ (.D(_114_[1]),
    .Q(result[1]),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 _235_ (.D(_114_[2]),
    .Q(result[2]),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 _236_ (.D(_114_[3]),
    .Q(result[3]),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 _237_ (.D(_113_),
    .Q(carry_out),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_0 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_1 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_2 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_3 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_4 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_5 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_6 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_7 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_8 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_10 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_11 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_12 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_13 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_14 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_15 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_16 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_17 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_18 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_45 ();
 sky130_fd_sc_hd__clkbuf_4 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_1_1__leaf_clk));
endmodule
