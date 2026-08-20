.class public final Lcom/facebook/ads/redexgen/X/NI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/NH;
    }
.end annotation


# static fields
.field public static A09:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/NH;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Z

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A05:Lcom/facebook/ads/redexgen/X/LD;

.field public final A06:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A07:Lcom/facebook/ads/redexgen/X/QA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NI;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Ia;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/redexgen/X/QA;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Z

    .line 45709
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 45710
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Ljava/lang/String;

    .line 45711
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Lcom/facebook/ads/redexgen/X/QA;

    .line 45712
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/LD;

    .line 45713
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    .line 45714
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Lcom/facebook/ads/redexgen/X/NI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    .line 45715
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/redexgen/X/QA;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Z

    .line 45718
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 45719
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Ljava/lang/String;

    .line 45720
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Lcom/facebook/ads/redexgen/X/QA;

    .line 45721
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/LD;

    .line 45722
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    .line 45723
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/NI;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    .line 45724
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/NI;)Lcom/facebook/ads/redexgen/X/Ia;
    .locals 0

    .line 45725
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NI;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x68

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NI;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x8t
        0x1dt
        0x1et
        0x29t
        0x28t
        0x28t
        0x33t
        0x32t
        0x1ft
        0x30t
        0x35t
        0x3ft
        0x37t
        0x10t
        0x35t
        0x2ft
        0x28t
        0x39t
        0x32t
        0x39t
        0x2et
        0x72t
        0x45t
        0x45t
        0x58t
        0x45t
        0x17t
        0x52t
        0x4ft
        0x52t
        0x54t
        0x42t
        0x43t
        0x5et
        0x59t
        0x50t
        0x17t
        0x56t
        0x54t
        0x43t
        0x5et
        0x58t
        0x59t
        0x49t
        0x7et
        0x7et
        0x63t
        0x7et
        0x2ct
        0x7bt
        0x64t
        0x65t
        0x60t
        0x69t
        0x2ct
        0x63t
        0x7ct
        0x69t
        0x62t
        0x65t
        0x62t
        0x6bt
        0x2ct
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/QA;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45726
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1M;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 45727
    .local v0, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    .line 45728
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 45729
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 45730
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v4

    .line 45731
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 45732
    .local v1, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v0, :cond_0

    .line 45733
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0f;->A0A()Lcom/facebook/ads/redexgen/X/0e;

    .line 45734
    :cond_0
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/NI;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 45735
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/NI;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45736
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-interface {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/Ia;->A9a(Ljava/lang/String;Ljava/util/Map;)V

    .line 45737
    new-instance v2, Lcom/facebook/ads/redexgen/X/NF;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/facebook/ads/redexgen/X/NF;-><init>(Lcom/facebook/ads/redexgen/X/NI;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/NG;

    invoke-direct {v1, p0, p1, p3}, Lcom/facebook/ads/redexgen/X/NG;-><init>(Lcom/facebook/ads/redexgen/X/NI;Ljava/lang/String;Ljava/util/Map;)V

    .line 45738
    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00()Landroid/app/Activity;

    move-result-object v0

    .line 45739
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kj;->A00(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/Context;)V

    .line 45740
    return-void
.end method

.method private A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45741
    .local v11, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A01(III)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 45742
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1, p3}, Lcom/facebook/ads/redexgen/X/NA;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Lcom/facebook/ads/redexgen/X/QA;

    .line 45743
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/LD;

    .line 45744
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 45745
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v9

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Z

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Z

    .line 45746
    move-object v7, p1

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 45747
    .local v1, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v0, :cond_0

    .line 45748
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0f;->A0C()V

    .line 45749
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A00:Lcom/facebook/ads/redexgen/X/NH;

    if-eqz v0, :cond_1

    .line 45750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A00:Lcom/facebook/ads/redexgen/X/NH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NH;->AAe()V

    .line 45751
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45752
    .end local v1    # "adAction":Lcom/facebook/ads/redexgen/X/0f;
    :catch_0
    move-exception v5

    .line 45753
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2c

    const/16 v1, 0x14

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45754
    :catch_1
    move-exception v3

    .line 45755
    .local v1, "ex":Ljava/lang/Exception;
    const/16 v2, 0x16

    const/16 v1, 0x16

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45756
    :goto_0
    return-void
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/NH;)V
    .locals 0

    .line 45757
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A00:Lcom/facebook/ads/redexgen/X/NH;

    .line 45758
    return-void
.end method

.method public final A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45759
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A0J:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 45760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/LD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LD;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-interface {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/Ia;->A98(Ljava/lang/String;Ljava/util/Map;)V

    .line 45762
    :goto_0
    return-void

    .line 45763
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45764
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/NI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 45765
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/NI;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final A09(Z)V
    .locals 0

    .line 45766
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Z

    .line 45767
    return-void
.end method

.method public final A0A(Z)V
    .locals 0

    .line 45768
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Z

    .line 45769
    return-void
.end method
