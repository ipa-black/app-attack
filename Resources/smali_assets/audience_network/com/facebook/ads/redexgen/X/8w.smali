.class public final Lcom/facebook/ads/redexgen/X/8w;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lk;
.implements Lcom/facebook/ads/redexgen/X/S0;


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5D;

.field public A01:Lcom/facebook/ads/redexgen/X/5F;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/OW;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A07:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A08:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A09:Lcom/facebook/ads/redexgen/X/Ii;

.field public final A0A:Lcom/facebook/ads/redexgen/X/L8;

.field public final A0B:Lcom/facebook/ads/redexgen/X/LD;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A0D:Lcom/facebook/ads/redexgen/X/MC;

.field public final A0E:Lcom/facebook/ads/redexgen/X/OE;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0F:Lcom/facebook/ads/redexgen/X/OM;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public final A0H:Lcom/facebook/ads/redexgen/X/QA;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 19567
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ky6zrcoV7NYtZpO3AnBVhERgUe61TP4A"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MIS71VG0t7feKobdqgnq1TwubiJ1N09z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nEwmQOfqxRkjYDAAu8TY0n89Pulsb82"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nm6mhrtocmSPL4qM7u9wOkkvqXPHcra"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ADTrDSFqqVysA22fSklmKPGMwsWvvDiN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oNlgPu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "28CTXOUAXLtNi6XFaROwO0buCKC9QIVi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8w;->A0D()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/MC;I)V
    .locals 10
    .param p6    # I
        .annotation build Lcom/facebook/ads/internal/view/dynamiclayout/DynamicWebViewController$AdFormatType;
        .end annotation
    .end param

    .line 19568
    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19569
    new-instance v1, Lcom/facebook/ads/redexgen/X/SD;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Lcom/facebook/ads/redexgen/X/8w;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A00:Lcom/facebook/ads/redexgen/X/5D;

    .line 19570
    new-instance v1, Lcom/facebook/ads/redexgen/X/SC;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/SC;-><init>(Lcom/facebook/ads/redexgen/X/8w;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    .line 19571
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/8w;->A03:Z

    .line 19572
    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    .line 19573
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/8w;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    .line 19574
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/8w;->A0C:Lcom/facebook/ads/redexgen/X/Lj;

    .line 19575
    iput-object p4, v0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    .line 19576
    iput-object p5, v0, Lcom/facebook/ads/redexgen/X/8w;->A0D:Lcom/facebook/ads/redexgen/X/MC;

    .line 19577
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ON;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v1

    .line 19578
    .local v7, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/OM;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 19579
    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    .line 19580
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/8w;->A04:Z

    .line 19581
    :goto_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/OM;->A0K()Lcom/facebook/ads/redexgen/X/Ii;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A09:Lcom/facebook/ads/redexgen/X/Ii;

    .line 19582
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/OM;->A0L()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0B:Lcom/facebook/ads/redexgen/X/LD;

    .line 19583
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    new-instance v1, Lcom/facebook/ads/redexgen/X/SB;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Lcom/facebook/ads/redexgen/X/8w;)V

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/OM;->A0c(Lcom/facebook/ads/redexgen/X/OL;)V

    .line 19584
    const/16 v2, 0x3eb

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/LL;->A0G(ILandroid/view/View;)V

    .line 19585
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1B;->A0W()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19586
    new-instance v1, Lcom/facebook/ads/redexgen/X/OE;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/8w;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    new-instance v5, Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/8w;->A09:Lcom/facebook/ads/redexgen/X/Ii;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/8w;->A0C:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/8w;->A0D:Lcom/facebook/ads/redexgen/X/MC;

    new-instance v9, Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/8w;)V

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/OE;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/OD;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    .line 19587
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/OE;->A0N()V

    .line 19588
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    .line 19589
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/OA;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/OA;-><init>(Lcom/facebook/ads/redexgen/X/8w;)V

    .line 19590
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/S1;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19591
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/8w;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19592
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8w;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v5

    .line 19593
    .local v2, "mediaView":Landroid/view/ViewGroup;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    const/4 v2, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v1, v5, v2, v4, v3}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0H:Lcom/facebook/ads/redexgen/X/QA;

    .line 19594
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8w;->A0H:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    .line 19595
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1B;->A0A()I

    move-result v1

    .line 19596
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/QA;->A0W(I)V

    .line 19597
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8w;->A0H:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1B;->A0B()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/QA;->A0X(I)V

    .line 19598
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0H:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/OM;->A0e(Lcom/facebook/ads/redexgen/X/QA;)V

    .line 19599
    new-instance v1, Lcom/facebook/ads/redexgen/X/L8;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/L8;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0A:Lcom/facebook/ads/redexgen/X/L8;

    .line 19600
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8w;->A0A:Lcom/facebook/ads/redexgen/X/L8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/L7;->A03:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 19601
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8w;->setBackgroundColor(I)V

    .line 19602
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19603
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v4

    .line 19604
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Im;->AFr(Landroid/view/View;Ljava/lang/String;ZZZ)V

    goto :goto_2

    .line 19605
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    goto :goto_1

    .line 19606
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/OM;

    move/from16 v4, p6

    invoke-direct {v1, v2, p4, p2, v4}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;I)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    .line 19607
    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/8w;->A04:Z

    goto/16 :goto_0

    .line 19608
    :cond_2
    :goto_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 19609
    .local v0, "config":Lorg/json/JSONObject;
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Zs;->A0s()Z

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x44

    const/16 v2, 0x12

    const/4 v1, 0x1

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/8w;->A0B(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    const/16 v2, 0x10

    const/16 v1, 0x15

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/8w;->A0B(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/16 v5, 0x34

    const/16 v2, 0x10

    const/16 v1, 0x9

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/8w;->A0B(III)Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x1a

    const/16 v2, 0xa

    const/16 v1, 0x7a

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/8w;->A0B(III)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_3

    .line 19610
    const/4 v1, 0x1

    goto :goto_3

    .line 19611
    :cond_3
    :try_start_1
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1B;->A0J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/KU;->A05(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19612
    const/4 v1, 0x1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 19613
    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19614
    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19615
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1B;->A0E()J

    move-result-wide v1

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_4

    .line 19616
    :goto_3
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 19617
    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19618
    const/4 v1, 0x0

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19619
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1B;->A0E()J

    move-result-wide v1

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19620
    :cond_4
    :goto_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/OM;->A0j(Lorg/json/JSONObject;)V

    goto :goto_5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19621
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    .line 19622
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0M()Lcom/facebook/ads/redexgen/X/O9;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/7s;->A15:I

    .line 19623
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/O9;->A04(ILjava/lang/String;)V

    .line 19624
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Zs;
    .locals 0

    .line 19625
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/5F;
    .locals 0

    .line 19626
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/5F;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 19627
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Ia;
    .locals 0

    .line 19628
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Ii;
    .locals 0

    .line 19629
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A09:Lcom/facebook/ads/redexgen/X/Ii;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/LD;
    .locals 0

    .line 19630
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:Lcom/facebook/ads/redexgen/X/LD;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Lj;
    .locals 0

    .line 19631
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:Lcom/facebook/ads/redexgen/X/Lj;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/MC;
    .locals 0

    .line 19632
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0D:Lcom/facebook/ads/redexgen/X/MC;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/OE;
    .locals 0

    .line 19633
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 19634
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 19635
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0H:Lcom/facebook/ads/redexgen/X/QA;

    return-object p0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x29

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0C()V
    .locals 4

    .line 19636
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    .line 19637
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    .line 19638
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Oc;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Oc;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1V;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    .line 19639
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A08(Lcom/facebook/ads/redexgen/X/1L;)Lcom/facebook/ads/redexgen/X/Oc;

    move-result-object v0

    .line 19640
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oc;->A0B()Lcom/facebook/ads/redexgen/X/Oe;

    move-result-object v2

    .line 19641
    .local v0, "introView":Lcom/facebook/ads/redexgen/X/Oe;
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/8w;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19642
    new-instance v0, Lcom/facebook/ads/redexgen/X/S8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Lcom/facebook/ads/redexgen/X/8w;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Oe;->A04(Lcom/facebook/ads/redexgen/X/Od;)V

    .line 19643
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x6b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8w;->A0I:[B

    return-void

    :array_0
    .array-data 1
        -0x58t
        -0x2bt
        -0x2bt
        -0x2et
        -0x2bt
        -0x7dt
        -0x3at
        -0x2bt
        -0x38t
        -0x3ct
        -0x29t
        -0x34t
        -0x2ft
        -0x36t
        -0x7dt
        -0x3at
        -0x2et
        -0x2ft
        -0x37t
        -0x34t
        -0x36t
        -0x7dt
        -0x53t
        -0x4at
        -0x4et
        -0x4ft
        0x6t
        0xbt
        0x4t
        0xct
        0x11t
        0x8t
        0x7t
        0x2t
        0x4t
        0x7t
        -0x5ft
        -0x5at
        -0x61t
        -0x59t
        -0x54t
        -0x5dt
        -0x5et
        -0x63t
        -0x61t
        -0x5et
        -0x63t
        -0x59t
        -0x54t
        -0x5et
        -0x5dt
        -0x4at
        -0x6bt
        -0x66t
        -0x6dt
        -0x65t
        -0x60t
        -0x69t
        -0x6at
        -0x6ft
        -0x6dt
        -0x6at
        -0x6ft
        -0x5at
        -0x5ft
        -0x5at
        -0x6dt
        -0x62t
        -0x73t
        -0x6et
        -0x75t
        -0x6dt
        -0x68t
        -0x71t
        -0x72t
        -0x77t
        -0x62t
        -0x6dt
        -0x69t
        -0x71t
        -0x77t
        -0x63t
        -0x66t
        -0x71t
        -0x68t
        -0x62t
        -0x5at
        -0x51t
        -0x54t
        -0x5at
        -0x52t
        -0x5et
        -0x4at
        -0x4et
        -0x48t
        -0x4bt
        -0x5at
        -0x58t
        0x19t
        0x17t
        0x9t
        0x16t
        0x7t
        0x10t
        0xdt
        0x7t
        0xft
    .end array-data
.end method

.method private final A0E()V
    .locals 4

    .line 19644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/OM;->A0d(Lcom/facebook/ads/redexgen/X/S0;)V

    .line 19645
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:Z

    if-nez v0, :cond_2

    .line 19646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4z()V

    .line 19647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0X()V

    .line 19648
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    .line 19649
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19650
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19651
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:Lcom/facebook/ads/redexgen/X/Lj;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 19652
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19653
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:Lcom/facebook/ads/redexgen/X/L8;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L7;->A04:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 19654
    :cond_1
    return-void

    .line 19655
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A50()V

    .line 19656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19657
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8w;->AFS()V

    .line 19658
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0J:[Ljava/lang/String;

    const-string v1, "8j5uXfZ95rl8UwGJAIvPTgfy7qu4v9pG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Im;->AAg()V

    goto :goto_0
.end method

.method private A0F(Ljava/lang/String;)V
    .locals 12

    .line 19660
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19661
    return-void

    .line 19662
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/NI;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0D:Lcom/facebook/ads/redexgen/X/MC;

    .line 19663
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A6A()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/8w;->A0H:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:Lcom/facebook/ads/redexgen/X/LD;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/8w;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/NI;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 19664
    .local v0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/NI;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 19665
    .local v1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x56

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x62

    const/16 v1, 0x9

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/NI;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 19667
    return-void
.end method

.method private getMediaView()Landroid/view/ViewGroup;
    .locals 1

    .line 19737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    .line 19738
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A89()V
    .locals 1

    .line 19668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0F(Ljava/lang/String;)V

    .line 19669
    return-void
.end method

.method public final A8A(Ljava/lang/String;)V
    .locals 0

    .line 19670
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8w;->A0F(Ljava/lang/String;)V

    .line 19671
    return-void
.end method

.method public final A8E()V
    .locals 5

    .line 19672
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0D:Lcom/facebook/ads/redexgen/X/MC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A5c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 19673
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0D:Lcom/facebook/ads/redexgen/X/MC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    .line 19674
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0M()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:Lcom/facebook/ads/redexgen/X/Lj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/P5;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/P5;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 19675
    .local v0, "serverSideRewardHandler":Lcom/facebook/ads/redexgen/X/P5;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P5;->A05()V

    .line 19676
    return-void
.end method

.method public final A8w()V
    .locals 2

    .line 19677
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/S9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S9;-><init>(Lcom/facebook/ads/redexgen/X/8w;)V

    .line 19678
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19679
    return-void
.end method

.method public final A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19680
    invoke-static {}, Lcom/facebook/ads/redexgen/X/OM;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:Lcom/facebook/ads/redexgen/X/5D;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0K(Lcom/facebook/ads/redexgen/X/5D;)V

    .line 19682
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/5F;

    .line 19683
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8w;->A0E()V

    .line 19684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19685
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8w;->A0C()V

    .line 19686
    :goto_0
    return-void

    .line 19687
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0W()V

    goto :goto_0
.end method

.method public final AB4()V
    .locals 0

    .line 19688
    return-void
.end method

.method public final AB8()V
    .locals 1

    .line 19689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    if-eqz v0, :cond_0

    .line 19690
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OE;->A0P()V

    .line 19691
    :cond_0
    return-void
.end method

.method public final ABm(Z)V
    .locals 1

    .line 19692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    if-eqz v0, :cond_0

    .line 19693
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OE;->A0R(Z)V

    .line 19694
    :cond_0
    return-void
.end method

.method public final ABw(Z)V
    .locals 1

    .line 19695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    if-eqz v0, :cond_0

    .line 19696
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OE;->A0S(Z)V

    .line 19697
    :cond_0
    if-eqz p1, :cond_1

    .line 19698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0Q()V

    .line 19699
    :goto_0
    return-void

    .line 19700
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0T()V

    goto :goto_0
.end method

.method public final ACM(Z)V
    .locals 4

    .line 19701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    if-eqz v0, :cond_0

    .line 19702
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OE;->A0T(Z)V

    .line 19703
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A0J:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0J:[Ljava/lang/String;

    const-string v1, "5WCDyt3aDRAQqvSthuq2O6x8YHnGvtvN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 19704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:Z

    .line 19705
    return-void

    .line 19706
    :cond_1
    if-eqz p1, :cond_2

    .line 19707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0P()V

    .line 19708
    :goto_0
    return-void

    .line 19709
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0Y()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACZ()V
    .locals 1

    .line 19710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    if-eqz v0, :cond_0

    .line 19711
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OE;->A0Q()V

    .line 19712
    :cond_0
    return-void
.end method

.method public final AD5(Z)V
    .locals 1

    .line 19713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    if-eqz v0, :cond_0

    .line 19714
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OE;->A0U(Z)V

    .line 19715
    :cond_0
    return-void
.end method

.method public final AD7(Z)V
    .locals 1

    .line 19716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    if-eqz v0, :cond_0

    .line 19717
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OE;->A0V(Z)V

    .line 19718
    :cond_0
    return-void
.end method

.method public final ADL(Ljava/lang/String;)V
    .locals 4

    .line 19719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19720
    .local v0, "urlString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 19721
    return-void

    .line 19722
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/KS;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    .line 19723
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    .line 19724
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    .line 19725
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KS;->A0E(Lcom/facebook/ads/redexgen/X/KS;Lcom/facebook/ads/redexgen/X/Xc;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 19726
    return-void
.end method

.method public final AEZ(Landroid/os/Bundle;)V
    .locals 0

    .line 19727
    return-void
.end method

.method public final AFS()V
    .locals 1

    .line 19728
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:Z

    if-nez v0, :cond_0

    .line 19729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0H:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0U()V

    .line 19730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:Z

    .line 19731
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    .line 19732
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/5F;

    if-nez v1, :cond_0

    .line 19733
    return-void

    .line 19734
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->finish(I)V

    .line 19735
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 19736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 19739
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 19740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8w;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Im;->AFe(Landroid/view/View;)V

    .line 19742
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    if-eqz v0, :cond_1

    .line 19743
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OE;->A0O()V

    .line 19744
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A03()V

    .line 19745
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    .line 19746
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:Lcom/facebook/ads/redexgen/X/LD;

    .line 19747
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0H:Lcom/facebook/ads/redexgen/X/QA;

    .line 19748
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 19749
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v0

    .line 19750
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A99(Ljava/lang/String;Ljava/util/Map;)V

    .line 19751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:Lcom/facebook/ads/redexgen/X/5D;

    .line 19752
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A02:Lcom/facebook/ads/redexgen/X/OW;

    .line 19753
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/5F;

    .line 19754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A04(Ljava/lang/String;)V

    .line 19755
    invoke-static {}, Lcom/facebook/ads/redexgen/X/OM;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19756
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 19757
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8w;->requestDisallowInterceptTouchEvent(Z)V

    .line 19758
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 0

    .line 19759
    return-void
.end method

.method public setRtfActionsJavascriptListener(Lcom/facebook/ads/redexgen/X/OW;)V
    .locals 0

    .line 19760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8w;->A02:Lcom/facebook/ads/redexgen/X/OW;

    .line 19761
    return-void
.end method
