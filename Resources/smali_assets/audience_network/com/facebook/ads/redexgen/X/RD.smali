.class public final Lcom/facebook/ads/redexgen/X/RD;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RA;->ADB(Lcom/facebook/ads/redexgen/X/Q7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/RA;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Q7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 50319
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pUIboC8CwdUMtM1tPR8iEtPz8p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ladzvmq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gZiIZXhhpFNWaRiPv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vQtAVDGFp8M"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7j30UYRlUEXcM4Kd2wK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XchzO9Mtzl1GyvdPdWlZd1J0iwZmFx3H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VTwPVxpRcW0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YPnzN72MuP4y3lnuBhqZ0NoSyY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RD;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Q7;II)V
    .locals 0

    .line 50320
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 7

    .line 50321
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_1

    .line 50322
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0q:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 50323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2x()V

    .line 50324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RA;->A0C()Lcom/facebook/ads/redexgen/X/MK;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50325
    :cond_0
    :goto_0
    return-void

    .line 50326
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_2

    .line 50327
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0l:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 50328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/RA;->A0U(Lcom/facebook/ads/redexgen/X/RA;Z)Z

    .line 50329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RA;->A0A()Lcom/facebook/ads/redexgen/X/P8;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50330
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0N(Lcom/facebook/ads/redexgen/X/RA;I)V

    goto :goto_0

    .line 50331
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v5, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    const/4 v2, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/RD;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x7

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/RD;->A04:[Ljava/lang/String;

    const-string v1, "Wlqb3PCyph61UkVVxo7ng7VZa1hYfmo4"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    if-ne v6, v5, :cond_4

    .line 50332
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0k:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 50333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2p()V

    .line 50334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/RA;->A0U(Lcom/facebook/ads/redexgen/X/RA;Z)Z

    .line 50335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A07(Lcom/facebook/ads/redexgen/X/RA;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/72;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50337
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0N(Lcom/facebook/ads/redexgen/X/RA;I)V

    goto/16 :goto_0

    .line 50338
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_6

    .line 50339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Im;->ADA()V

    .line 50341
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0o:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 50342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A34()V

    .line 50343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RA;->A0B()Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A07(Lcom/facebook/ads/redexgen/X/RA;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0M(Lcom/facebook/ads/redexgen/X/RA;)V

    goto/16 :goto_0

    .line 50346
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_7

    .line 50347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0n:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 50348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2t()V

    .line 50349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/6z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6z;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A07(Lcom/facebook/ads/redexgen/X/RA;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0N(Lcom/facebook/ads/redexgen/X/RA;I)V

    goto/16 :goto_0

    .line 50352
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_8

    .line 50353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0m:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 50354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2q()V

    .line 50355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RA;->A0E()Lcom/facebook/ads/redexgen/X/Lx;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A07(Lcom/facebook/ads/redexgen/X/RA;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 50357
    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A09:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_0

    .line 50358
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0k:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 50359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2z()V

    .line 50360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/RA;->A0U(Lcom/facebook/ads/redexgen/X/RA;Z)Z

    .line 50361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A07(Lcom/facebook/ads/redexgen/X/RA;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/72;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50363
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/RA;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0N(Lcom/facebook/ads/redexgen/X/RA;I)V

    goto/16 :goto_0
.end method
