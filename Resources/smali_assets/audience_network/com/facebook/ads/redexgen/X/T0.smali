.class public final Lcom/facebook/ads/redexgen/X/T0;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/T1;,
        Lcom/facebook/ads/redexgen/X/T2;
    }
.end annotation


# static fields
.field public static A0Z:[B

.field public static A0a:[Ljava/lang/String;

.field public static final A0b:I

.field public static final A0c:I

.field public static final A0d:I

.field public static final A0e:I

.field public static final A0f:I

.field public static final A0g:I

.field public static final A0h:I

.field public static final A0i:I

.field public static final A0j:I

.field public static final A0k:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Landroid/widget/Toast;

.field public A04:Lcom/facebook/ads/redexgen/X/5F;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/Ke;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/Sa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/Oy;

.field public A08:Lcom/facebook/ads/redexgen/X/P5;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public final A0G:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A0H:Lcom/facebook/ads/redexgen/X/1X;

.field public final A0I:Lcom/facebook/ads/redexgen/X/5D;

.field public final A0J:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0K:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A0L:Lcom/facebook/ads/redexgen/X/Ii;

.field public final A0M:Lcom/facebook/ads/redexgen/X/Ke;

.field public final A0N:Lcom/facebook/ads/redexgen/X/L8;

.field public final A0O:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A0P:Lcom/facebook/ads/redexgen/X/MC;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/NR;

.field public final A0R:Lcom/facebook/ads/redexgen/X/NS;

.field public final A0S:Lcom/facebook/ads/redexgen/X/P3;

.field public final A0T:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0U:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0V:Z

.field public final A0W:Z

.field public final A0X:Z

.field public final A0Y:Lcom/facebook/ads/redexgen/X/Li;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 53668
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "57rzzR6raHrat8cHk0n2c9utIvWN6OL8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vZo4DQACnHxpUIABCEPhLIrXR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3pKkUgRnbq5D8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3oPHUcYdGBLGT6sjvwgTS6nCZs8dHXKK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yMOWmEDq6oq3Yf8aoY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BRjJ0geTmUVj6Aeo1VqVThKYcHpwhF7A"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bCnfD5Zsza6fNT9UI62TNCVdI9Gt63Qd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0XbQU4AacrxlEwxF12eBigHvJ8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/T0;->A0P()V

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A0i:I

    .line 53669
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A0d:I

    .line 53670
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A0j:I

    .line 53671
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A0b:I

    .line 53672
    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/T0;->A0k:Landroid/widget/RelativeLayout$LayoutParams;

    .line 53673
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A0e:I

    .line 53674
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A0f:I

    .line 53675
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A0h:I

    .line 53676
    const/16 v0, 0x4d

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/2a;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A0g:I

    .line 53677
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/T0;->A0c:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MC;)V
    .locals 12
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53678
    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53679
    new-instance v1, Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Lcom/facebook/ads/redexgen/X/T0;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0I:Lcom/facebook/ads/redexgen/X/5D;

    .line 53680
    const/4 v2, 0x0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0U:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53681
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0T:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53682
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0D:Z

    .line 53683
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/T0;->A0F:Z

    .line 53684
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0B:Z

    .line 53685
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A09:Z

    .line 53686
    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    .line 53687
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    .line 53688
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    .line 53689
    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53690
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1F;->A06()Lcom/facebook/ads/redexgen/X/1X;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    .line 53691
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v1, v4, v2}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0L:Lcom/facebook/ads/redexgen/X/Ii;

    .line 53692
    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0P:Lcom/facebook/ads/redexgen/X/MC;

    .line 53693
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/T0;->A0P:Lcom/facebook/ads/redexgen/X/MC;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    new-instance v1, Lcom/facebook/ads/redexgen/X/P5;

    move-object/from16 v5, p5

    invoke-direct {v1, p1, v4, v5, v2}, Lcom/facebook/ads/redexgen/X/P5;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lj;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A08:Lcom/facebook/ads/redexgen/X/P5;

    .line 53694
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53695
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0M()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53696
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1F;->A02()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0C:Z

    .line 53697
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1F;->A0A()Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0X:Z

    .line 53698
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    if-nez v1, :cond_0

    .line 53699
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0P:Lcom/facebook/ads/redexgen/X/MC;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/MC;->A6g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 53700
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0P:Lcom/facebook/ads/redexgen/X/MC;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/MC;->A6b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 53701
    :cond_0
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0C:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0X:Z

    if-eqz v1, :cond_3

    .line 53702
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1F;->A02()I

    move-result v5

    .line 53703
    .local v8, "countDownSeconds":I
    :goto_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0U:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1X;->A0I()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53704
    const/4 v4, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/T2;

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/T2;-><init>(Lcom/facebook/ads/redexgen/X/T0;Lcom/facebook/ads/redexgen/X/T8;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v1, v5, v2}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(ILcom/facebook/ads/redexgen/X/Kd;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0M:Lcom/facebook/ads/redexgen/X/Ke;

    .line 53705
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IK;->A2C(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0W:Z

    .line 53706
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IK;->A0k(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0V:Z

    .line 53707
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A06()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    .line 53708
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    new-instance v1, Lcom/facebook/ads/redexgen/X/P3;

    invoke-direct {v1, v6, v5, v2}, Lcom/facebook/ads/redexgen/X/P3;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Zs;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0S:Lcom/facebook/ads/redexgen/X/P3;

    .line 53709
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0W:Z

    if-eqz v1, :cond_2

    .line 53710
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v1

    .line 53711
    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Ne;->A00(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 53712
    :goto_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/L8;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/L8;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0N:Lcom/facebook/ads/redexgen/X/L8;

    .line 53713
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A0N:Lcom/facebook/ads/redexgen/X/L8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/L7;->A03:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 53714
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IK;->A1f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53715
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/Li;->setProgressSpinnerInvisible(Z)V

    .line 53716
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 53717
    .local v9, "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0P:Lcom/facebook/ads/redexgen/X/MC;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/MC;->A7M()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x38

    const/16 v2, 0x9

    const/16 v1, 0x3d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53718
    new-instance v5, Lcom/facebook/ads/redexgen/X/Oy;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v10, Lcom/facebook/ads/redexgen/X/T1;

    invoke-direct {v10, v0, v4}, Lcom/facebook/ads/redexgen/X/T1;-><init>(Lcom/facebook/ads/redexgen/X/T0;Lcom/facebook/ads/redexgen/X/T8;)V

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Oy;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/1X;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Ow;Ljava/util/Map;)V

    iput-object v5, v0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 53719
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0L()V

    .line 53720
    const/4 v1, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53721
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 53722
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0I()V

    .line 53723
    new-instance v1, Lcom/facebook/ads/redexgen/X/T7;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/T7;-><init>(Lcom/facebook/ads/redexgen/X/T0;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0Q:Lcom/facebook/ads/redexgen/X/NR;

    .line 53724
    new-instance v3, Lcom/facebook/ads/redexgen/X/NS;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/T0;->A0Q:Lcom/facebook/ads/redexgen/X/NR;

    const/4 v1, 0x3

    new-array v10, v1, [Landroid/view/View;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .local p8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A06:Lcom/facebook/ads/redexgen/X/Sa;

    const/4 v1, 0x0

    aput-object v2, v10, v1

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v2, 0x2

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    aput-object v1, v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Li;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/NR;[Landroid/view/View;)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/T0;->A0R:Lcom/facebook/ads/redexgen/X/NS;

    .line 53725
    return-void

    .line 53726
    :cond_2
    const v1, -0xdcd8d1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 53727
    :cond_3
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1X;->A07()I

    move-result v5

    goto/16 :goto_1

    .line 53728
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Zs;
    .locals 0

    .line 53729
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/1X;
    .locals 0

    .line 53730
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 53731
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Ia;
    .locals 0

    .line 53732
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Ii;
    .locals 0

    .line 53733
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0L:Lcom/facebook/ads/redexgen/X/Ii;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Ke;
    .locals 0

    .line 53734
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0M:Lcom/facebook/ads/redexgen/X/Ke;

    return-object p0
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/Li;
    .locals 10

    .line 53735
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/T0;->A0L:Lcom/facebook/ads/redexgen/X/Ii;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53736
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0b()I

    move-result v9

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Ii;II)V

    .line 53737
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Li;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setFullscreen(Z)V

    .line 53738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53739
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A08(Lcom/facebook/ads/redexgen/X/Zs;)Z

    move-result v0

    .line 53740
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04(Lcom/facebook/ads/redexgen/X/1L;Z)V

    .line 53741
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetailsVisible(Z)V

    .line 53742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53743
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53744
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    .line 53745
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53746
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0l()Lcom/facebook/ads/redexgen/X/1b;

    move-result-object v0

    .line 53747
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetails(Lcom/facebook/ads/redexgen/X/1V;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1b;)V

    .line 53748
    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Lcom/facebook/ads/redexgen/X/T0;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lh;)V

    .line 53749
    return-object v4
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Lj;
    .locals 0

    .line 53750
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/MC;
    .locals 0

    .line 53751
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0P:Lcom/facebook/ads/redexgen/X/MC;

    return-object p0
.end method

.method private A09()Lcom/facebook/ads/redexgen/X/Sa;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 53752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    if-eqz v0, :cond_0

    .line 53753
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 53754
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53755
    .end local v0
    .end local v1
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 53756
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v4

    .line 53757
    .local v0, "colorInfo":Lcom/facebook/ads/redexgen/X/1L;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sa;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0P:Lcom/facebook/ads/redexgen/X/MC;

    .line 53758
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A6A()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 53759
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 53760
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    .line 53761
    .local v1, "button":Lcom/facebook/ads/redexgen/X/Sa;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 53762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NM;->setText(Ljava/lang/String;)V

    .line 53763
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setTextSize(F)V

    .line 53764
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setIncludeFontPadding(Z)V

    .line 53765
    sget v0, Lcom/facebook/ads/redexgen/X/T0;->A0b:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setPadding(IIII)V

    .line 53766
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0W:Z

    if-nez v0, :cond_2

    .line 53767
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0N(Landroid/view/View;I)V

    .line 53768
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Lv;-><init>(Lcom/facebook/ads/redexgen/X/T0;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53769
    return-object v1
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Sa;
    .locals 0

    .line 53770
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A06:Lcom/facebook/ads/redexgen/X/Sa;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/NS;
    .locals 0

    .line 53771
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0R:Lcom/facebook/ads/redexgen/X/NS;

    return-object p0
.end method

.method private A0C()Lcom/facebook/ads/redexgen/X/Na;
    .locals 10

    .line 53772
    new-instance v3, Lcom/facebook/ads/redexgen/X/Na;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53773
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Na;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1L;ZIII)V

    .line 53774
    .local v0, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/Na;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53775
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A06()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53776
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v5

    .line 53777
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Na;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 53778
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Na;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 53779
    .local v1, "descriptionTv":Landroid/widget/TextView;
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 53780
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53781
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53782
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Na;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 53783
    .local v3, "titleTv":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53784
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53785
    return-object v3
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Oy;
    .locals 0

    .line 53786
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    return-object p0
.end method

.method public static A0E(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/T0;->A0Z:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/T0;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53787
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0T:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/T0;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53788
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0U:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A0H()V
    .locals 21

    .line 53789
    sget v0, Lcom/facebook/ads/redexgen/X/T0;->A0e:I

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53790
    .local v0, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53791
    const/16 v0, 0x9

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53792
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v7, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53793
    .local v2, "iconView":Lcom/facebook/ads/redexgen/X/NU;
    const/4 v2, 0x0

    invoke-static {v7, v2}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 53794
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 53795
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    sget v0, Lcom/facebook/ads/redexgen/X/T0;->A0e:I

    .line 53796
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A05(II)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53797
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 53798
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53799
    .local v4, "titleView":Landroid/widget/TextView;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 53800
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53801
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53802
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/1L;->A06(Z)I

    move-result v3

    .line 53803
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53804
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1J;->A06()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53805
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 53806
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53807
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53808
    new-instance v15, Lcom/facebook/ads/redexgen/X/NW;

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    sget v17, Lcom/facebook/ads/redexgen/X/T0;->A0h:I

    sget v19, Lcom/facebook/ads/redexgen/X/T0;->A0g:I

    const/16 v18, 0x5

    const/16 v20, -0x1

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/NW;-><init>(Lcom/facebook/ads/redexgen/X/Xc;IIII)V

    .line 53809
    .local v5, "starRatingContainer":Lcom/facebook/ads/redexgen/X/NW;
    const/16 v11, 0x10

    invoke-virtual {v15, v11}, Lcom/facebook/ads/redexgen/X/NW;->setGravity(I)V

    .line 53810
    const/4 v10, -0x1

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53811
    .local v9, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53812
    .local v11, "ratingCountView":Landroid/widget/TextView;
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53813
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/1L;->A06(Z)I

    move-result v6

    .line 53814
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53815
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 53816
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 53817
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53818
    .local v10, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v6, Lcom/facebook/ads/redexgen/X/T0;->A0c:I

    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 53819
    iget-object v10, v5, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53820
    .local v12, "ratingInfoContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53821
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53822
    sget v10, Lcom/facebook/ads/redexgen/X/T0;->A0f:I

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53823
    .local v8, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v10, Lcom/facebook/ads/redexgen/X/T0;->A0c:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 53824
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v11

    const/4 v10, 0x3

    invoke-virtual {v12, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53825
    invoke-virtual {v6, v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53826
    invoke-virtual {v6, v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53827
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53828
    .local v6, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/T0;->A0c:I

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 53829
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/NU;->getId()I

    move-result v0

    invoke-virtual {v11, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53830
    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53831
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/T0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53832
    .local v1, "titleAndRatingContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {v10, v6, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53833
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 53834
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A02:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 53835
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 53836
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/T0;->A02:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const-string v1, "bsFsSO04IJ4eZVQxRT"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53837
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53838
    :cond_1
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53839
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53840
    .end local v3
    :cond_2
    :goto_0
    return-void

    .line 53841
    :cond_3
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53842
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53843
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 53844
    invoke-virtual {v15, v0}, Lcom/facebook/ads/redexgen/X/NW;->setRating(F)V

    .line 53845
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53846
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53847
    .local v3, "ratingSB":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53848
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53849
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 53850
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53851
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53852
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private A0I()V
    .locals 2

    .line 53853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53854
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0K()V

    .line 53855
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 53856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A0N:Lcom/facebook/ads/redexgen/X/L8;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L7;->A04:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 53857
    :cond_0
    return-void

    .line 53858
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0N()V

    goto :goto_0
.end method

.method private A0J()V
    .locals 7

    .line 53859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0E:Z

    .line 53860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A08:Lcom/facebook/ads/redexgen/X/P5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P5;->A05()V

    .line 53862
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0P:Lcom/facebook/ads/redexgen/X/MC;

    .line 53863
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A5c()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/72;-><init>(II)V

    .line 53864
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8T;)V

    .line 53865
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0A:Z

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A0W:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const-string v1, "I0JtICznoezMzS0InHXj65Cim"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "YxqOCBuXvZfwM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 53866
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 53867
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 53868
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53869
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53870
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v6

    .line 53871
    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/NI;->A03(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;)V

    .line 53872
    :cond_1
    return-void
.end method

.method private A0K()V
    .locals 4

    .line 53873
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53874
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Oc;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Oc;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1V;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53875
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A08(Lcom/facebook/ads/redexgen/X/1L;)Lcom/facebook/ads/redexgen/X/Oc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    .line 53876
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Oc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    .line 53877
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Oc;

    move-result-object v1

    .line 53878
    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A07(I)Lcom/facebook/ads/redexgen/X/Oc;

    move-result-object v0

    .line 53879
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oc;->A0B()Lcom/facebook/ads/redexgen/X/Oe;

    move-result-object v2

    .line 53880
    .local v0, "introView":Lcom/facebook/ads/redexgen/X/Oe;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A0L:Lcom/facebook/ads/redexgen/X/Ii;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0U:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ik;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 53881
    sget-object v0, Lcom/facebook/ads/redexgen/X/T0;->A0k:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/T0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53882
    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Lcom/facebook/ads/redexgen/X/T0;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Oe;->A04(Lcom/facebook/ads/redexgen/X/Od;)V

    .line 53883
    return-void
.end method

.method private A0L()V
    .locals 8

    .line 53884
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A09()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A06:Lcom/facebook/ads/redexgen/X/Sa;

    .line 53885
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T0;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    .line 53886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 53887
    const/4 v6, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53888
    .local v0, "appMetadataLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/T0;->A0d:I

    sget v0, Lcom/facebook/ads/redexgen/X/T0;->A0j:I

    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53889
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53890
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T0;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A02:Landroid/widget/RelativeLayout;

    .line 53891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 53892
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0V:Z

    if-eqz v0, :cond_2

    .line 53893
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0H()V

    .line 53894
    :goto_0
    const/4 v7, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53895
    .local v2, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/T0;->A0d:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53896
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A06:Lcom/facebook/ads/redexgen/X/Sa;

    if-eqz v0, :cond_0

    .line 53898
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sa;->getId()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53899
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53900
    .local v4, "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53901
    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53902
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53903
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A06:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53904
    .end local v4    # "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 53905
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53906
    .local v1, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53907
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53908
    .local v3, "adWebViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/T0;->A0d:I

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53909
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Li;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53910
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Li;->setVisibility(I)V

    .line 53912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Oy;->setVisibility(I)V

    .line 53913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 53914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/T0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/T0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/T0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A0B()V

    .line 53919
    :cond_1
    return-void

    .line 53920
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T0;->A02:Landroid/widget/RelativeLayout;

    .line 53921
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0C()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53922
    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private A0M()V
    .locals 6

    .line 53923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53924
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 53925
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ii;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A0r:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 53926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0T:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53927
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 53928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 53929
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0R:Lcom/facebook/ads/redexgen/X/NS;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Landroid/view/View;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    const/4 v3, 0x2

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LL;->A0Z([Landroid/view/View;)V

    .line 53930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 53931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A06:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 53932
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A0S:Lcom/facebook/ads/redexgen/X/P3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A06:Lcom/facebook/ads/redexgen/X/Sa;

    .line 53933
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A03(Lcom/facebook/ads/redexgen/X/Sa;)Landroid/util/Pair;

    move-result-object v2

    .line 53934
    .local v1, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Landroid/view/View;

    .line 53935
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lw;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/P2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P2;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_0

    .line 53936
    .end local v2
    :goto_0
    return-void

    .line 53937
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 53938
    new-array v0, v5, [Landroid/view/View;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0Z([Landroid/view/View;)V

    .line 53939
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53940
    .local v2, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/T0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 53941
    .end local v2    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53942
    .local v2, "screenshotParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Li;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 53944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 53945
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53946
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/T0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53947
    goto :goto_0
.end method

.method private A0N()V
    .locals 4

    .line 53948
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 53949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53950
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const-string v1, "xj34PAIXy0BC0JvFurkBkOtWc"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "hWQrQPNffHRqy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Oy;->A0B()V

    .line 53951
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Li;->setVisibility(I)V

    .line 53952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Oy;->setVisibility(I)V

    .line 53953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A01:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 53954
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 53955
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A06:Lcom/facebook/ads/redexgen/X/Sa;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0e()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A05:Lcom/facebook/ads/redexgen/X/Ke;

    if-nez v0, :cond_3

    .line 53956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53957
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0e()I

    move-result v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/T5;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/T5;-><init>(Lcom/facebook/ads/redexgen/X/T0;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(ILcom/facebook/ads/redexgen/X/Kd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A05:Lcom/facebook/ads/redexgen/X/Ke;

    .line 53958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A05:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A08()Z

    .line 53959
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0M:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A08()Z

    .line 53960
    return-void
.end method

.method private A0O()V
    .locals 3

    .line 53961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A03:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 53962
    return-void

    .line 53963
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T0;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0C()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A03:Landroid/widget/Toast;

    .line 53964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0M:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A04()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0Q(I)V

    .line 53965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A03:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53966
    return-void
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0x5c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/T0;->A0Z:[B

    return-void

    :array_0
    .array-data 1
        -0x6et
        -0x61t
        -0x5et
        -0x46t
        -0x54t
        -0x56t
        -0x46t
        -0x5ct
        0x4t
        0xdt
        0xat
        0x4t
        0xct
        0x0t
        0x10t
        0x13t
        0xat
        0x8t
        0xat
        0xft
        -0x4dt
        -0x44t
        -0x47t
        -0x4dt
        -0x45t
        -0x51t
        -0x3dt
        -0x41t
        -0x3bt
        -0x3et
        -0x4dt
        -0x4bt
        -0xbt
        -0x6t
        0x0t
        -0xft
        -0x2t
        -0x1t
        0x0t
        -0xbt
        0x0t
        -0xbt
        -0x13t
        -0x8t
        -0x37t
        -0x44t
        -0x31t
        -0x3ct
        -0x2ft
        -0x40t
        -0x46t
        -0x42t
        -0x39t
        -0x3ct
        -0x42t
        -0x3at
        -0x2bt
        -0x2ft
        -0x3at
        -0x38t
        -0x36t
        -0x2et
        -0x36t
        -0x2dt
        -0x27t
        -0x41t
        -0x4et
        -0x3ct
        -0x52t
        -0x41t
        -0x4ft
        -0x4et
        -0x4ft
        -0x54t
        -0x3dt
        -0x4at
        -0x4ft
        -0x4et
        -0x44t
        -0x50t
        -0x62t
        -0x65t
        -0x51t
        -0x5et
        -0x62t
        -0x50t
        -0x68t
        -0x64t
        -0x5bt
        -0x5et
        -0x64t
        -0x5ct
    .end array-data
.end method

.method private A0Q(I)V
    .locals 6

    .line 53967
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 53968
    .local v0, "progress":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T0;->A03:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    .line 53969
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0C()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x6

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/T0;->A0i:I

    .line 53970
    const/16 v1, 0x31

    const/4 v0, 0x0

    invoke-static {v4, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/LL;->A0Y(Landroid/widget/Toast;Ljava/lang/String;III)V

    .line 53971
    return-void
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/T0;)V
    .locals 0

    .line 53972
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0O()V

    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/T0;)V
    .locals 0

    .line 53973
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0J()V

    return-void
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/T0;)V
    .locals 0

    .line 53974
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0M()V

    return-void
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/T0;)V
    .locals 0

    .line 53975
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0N()V

    return-void
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/T0;I)V
    .locals 0

    .line 53976
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/T0;->A0Q(I)V

    return-void
.end method

.method public static synthetic A0W(Lcom/facebook/ads/redexgen/X/T0;ZLjava/lang/String;)V
    .locals 0

    .line 53977
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/T0;->A0X(ZLjava/lang/String;)V

    return-void
.end method

.method private A0X(ZLjava/lang/String;)V
    .locals 12

    .line 53978
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A0B:Z

    .line 53979
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 53980
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    const/16 v2, 0x4f

    const/16 v1, 0xd

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/16 v2, 0x8

    const/16 v1, 0xc

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53981
    const/16 v2, 0x14

    const/16 v1, 0xc

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53982
    new-instance v5, Lcom/facebook/ads/redexgen/X/NI;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/T0;->A0J:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0P:Lcom/facebook/ads/redexgen/X/MC;

    .line 53983
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A6A()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 53984
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 53985
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/T0;->A0O:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/NI;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 53986
    .local v2, "helper":Lcom/facebook/ads/redexgen/X/NI;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0W:Z

    if-eqz v0, :cond_0

    .line 53987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53988
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A05()Ljava/lang/String;

    move-result-object v0

    .line 53989
    invoke-virtual {v5, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/NI;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 53990
    .end local v3
    :goto_1
    return-void

    .line 53991
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0M:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A05()Z

    move-result v2

    xor-int/2addr v2, v3

    .line 53992
    .local v3, "skipRedirect":Z
    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/NI;->A0A(Z)V

    .line 53993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53994
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A05()Ljava/lang/String;

    move-result-object v0

    .line 53995
    invoke-virtual {v5, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/NI;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 53996
    if-eqz v2, :cond_1

    .line 53997
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/T3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Lcom/facebook/ads/redexgen/X/T0;)V

    .line 53998
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53999
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A0A:Z

    goto :goto_1

    .line 54000
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 54001
    :cond_3
    const/16 v2, 0x2c

    const/16 v1, 0xc

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private A0Y()Z
    .locals 4

    .line 54002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0K()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x41

    const/16 v1, 0xe

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54003
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0K()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/16 v1, 0xc

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54004
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const-string v1, "r5y7OBqhAYVA47bIfl4AlIWKO2XfiX80"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0O()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 54005
    :goto_0
    return v0

    .line 54006
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0Z()Z
    .locals 2

    .line 54007
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0X:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0H:Lcom/facebook/ads/redexgen/X/1X;

    .line 54008
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54009
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A02()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    .line 54010
    :goto_0
    return v0

    .line 54011
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54012
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0E:Z

    return p0
.end method

.method public static synthetic A0b(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54013
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A09:Z

    return p0
.end method

.method public static synthetic A0c(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54014
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0Z()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0d(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54015
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0V:Z

    return p0
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54016
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0X:Z

    return p0
.end method

.method public static synthetic A0f(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54017
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0C:Z

    return p0
.end method

.method public static synthetic A0g(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54018
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0F:Z

    return p0
.end method

.method public static synthetic A0h(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54019
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0W:Z

    return p0
.end method

.method public static synthetic A0i(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54020
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T0;->A0Y()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0j(Lcom/facebook/ads/redexgen/X/T0;)Z
    .locals 0

    .line 54021
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0B:Z

    return p0
.end method

.method public static synthetic A0k(Lcom/facebook/ads/redexgen/X/T0;Z)Z
    .locals 0

    .line 54022
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/T0;->A0F:Z

    return p1
.end method

.method public static synthetic A0l(Lcom/facebook/ads/redexgen/X/T0;Z)Z
    .locals 0

    .line 54023
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/T0;->A0D:Z

    return p1
.end method


# virtual methods
.method public final A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 2

    .line 54024
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/T0;->A04:Lcom/facebook/ads/redexgen/X/5F;

    .line 54025
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A04:Lcom/facebook/ads/redexgen/X/5F;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0I:Lcom/facebook/ads/redexgen/X/5D;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0K(Lcom/facebook/ads/redexgen/X/5D;)V

    .line 54026
    return-void
.end method

.method public final ABw(Z)V
    .locals 1

    .line 54027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0M:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A07()Z

    .line 54028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A09:Z

    .line 54029
    return-void
.end method

.method public final ACM(Z)V
    .locals 4

    .line 54030
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0X:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0F:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A0D:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const-string v1, "UQp6GtSKm4mkcrS1rXAjxFqYQJcA6U4M"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0U:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54031
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0M:Lcom/facebook/ads/redexgen/X/Ke;

    .line 54032
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0M:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A08()Z

    .line 54034
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEZ(Landroid/os/Bundle;)V
    .locals 0

    .line 54035
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 54036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 54037
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 54038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0N:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A03()V

    .line 54039
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A04:Lcom/facebook/ads/redexgen/X/5F;

    if-eqz v1, :cond_0

    .line 54040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0I:Lcom/facebook/ads/redexgen/X/5D;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0L(Lcom/facebook/ads/redexgen/X/5D;)V

    .line 54041
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    if-eqz v0, :cond_2

    .line 54042
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/T0;->A0a:[Ljava/lang/String;

    const-string v1, "voPpcOtL9PQSCLq1wYvqOCQr8JaLbGKq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54043
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T0;->A0K:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0G:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 54045
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    .line 54046
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 54047
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v0

    .line 54048
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A99(Ljava/lang/String;Ljava/util/Map;)V

    .line 54049
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A07:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A0C()V

    .line 54050
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A0M:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A07()Z

    .line 54051
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T0;->A0Y:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lh;)V

    .line 54052
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A03:Landroid/widget/Toast;

    .line 54053
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T0;->A04:Lcom/facebook/ads/redexgen/X/5F;

    .line 54054
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 54055
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 54056
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 54057
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T0;->ACM(Z)V

    .line 54058
    :goto_0
    return-void

    .line 54059
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T0;->ABw(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 0

    .line 54060
    return-void
.end method

.method public setServerSideRewardHandler(Lcom/facebook/ads/redexgen/X/P5;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 54061
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T0;->A08:Lcom/facebook/ads/redexgen/X/P5;

    .line 54062
    return-void
.end method
