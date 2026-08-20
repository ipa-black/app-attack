.class public final Lcom/facebook/ads/redexgen/X/FA;
.super Lcom/facebook/ads/redexgen/X/Sk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aA;->A0E(Lcom/facebook/ads/redexgen/X/8B;Lcom/facebook/ads/redexgen/X/1q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aA;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FA;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aA;Lcom/facebook/ads/redexgen/X/a0;)V
    .locals 0

    .line 32717
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FA;->A01:Lcom/facebook/ads/redexgen/X/a0;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sk;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FA;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FA;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x71t
        -0x44t
        -0x44t
        -0x47t
        -0x44t
        0x6at
        -0x51t
        -0x3et
        -0x51t
        -0x53t
        -0x41t
        -0x42t
        -0x4dt
        -0x48t
        -0x4ft
        0x6at
        -0x55t
        -0x53t
        -0x42t
        -0x4dt
        -0x47t
        -0x48t
        0x2t
        -0x2t
        -0x3t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final AAF()V
    .locals 2

    .line 32718
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A0H(Lcom/facebook/ads/redexgen/X/aA;Z)Z

    .line 32719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A0G(Lcom/facebook/ads/redexgen/X/aA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A0C(Lcom/facebook/ads/redexgen/X/aA;)V

    .line 32721
    :cond_0
    return-void
.end method

.method public final AAV(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32722
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3Z()V

    .line 32723
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 32724
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x16

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32725
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0g;->A04(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    .line 32726
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A00(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A00(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->AAO(Lcom/facebook/ads/redexgen/X/aA;)V

    .line 32728
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    .line 32729
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A04(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A01:Lcom/facebook/ads/redexgen/X/a0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a0;->A6B()Ljava/lang/String;

    move-result-object v0

    .line 32730
    invoke-static {v2, v1, v0, v3, p2}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v1

    .line 32731
    .local v1, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v1, :cond_1

    .line 32732
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3W()V

    .line 32733
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/0f;->A0C()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32734
    :catch_0
    move-exception v4

    .line 32735
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aA;->A07()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32736
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public final ABC()V
    .locals 2

    .line 32737
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A01(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Zy;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aT;->A3a(Z)V

    .line 32738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A01(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Zy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A01(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Zy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0p;->A02()V

    .line 32740
    :cond_0
    return-void

    .line 32741
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ABu()V
    .locals 1

    .line 32742
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3c()V

    .line 32743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A01(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Zy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zy;->A07()V

    .line 32744
    return-void
.end method

.method public final ADD()V
    .locals 0

    .line 32745
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    return-void
.end method
