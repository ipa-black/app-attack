.class public final Lcom/facebook/ads/redexgen/X/Y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6E;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Xz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdCacheListenerImpl"
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/a7;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Xz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xz;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/a7;",
            ">;)V"
        }
    .end annotation

    .line 67197
    .local p2, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67198
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Ljava/util/List;

    .line 67199
    return-void
.end method

.method private A00()V
    .locals 10

    .line 67200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5W;->A05(Z)V

    .line 67201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5W;->A02()V

    .line 67202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5W;->A03(I)V

    .line 67203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/a7;

    .line 67204
    .local v1, "nativeAdapter":Lcom/facebook/ads/redexgen/X/a7;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    .line 67205
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A01(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v5

    const/4 v7, 0x0

    .line 67206
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tp;->A0K()Lcom/facebook/ads/redexgen/X/Ix;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    .line 67207
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5W;->A01()Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Tp;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/a7;Lcom/facebook/ads/redexgen/X/8B;Lcom/facebook/ads/redexgen/X/Ix;Lcom/facebook/ads/redexgen/X/ZU;)V

    .line 67208
    .local v2, "nativeAdBaseApi":Lcom/facebook/ads/redexgen/X/Tp;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Tp;->A0y()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67209
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Tp;->A0y()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a7;->A0F()Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67210
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Tp;->A0y()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a7;->A0F()Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ZV;

    .line 67211
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/ZV;->A00(Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 67212
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A01(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5W;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 67213
    .end local v1    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/a7;
    .end local v2    # "nativeAdBaseApi":Lcom/facebook/ads/redexgen/X/Tp;
    goto :goto_0

    .line 67214
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y1;-><init>(Lcom/facebook/ads/redexgen/X/Y0;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Js;->A00(Lcom/facebook/ads/redexgen/X/Jo;)V

    .line 67215
    return-void
.end method


# virtual methods
.method public final AAT()V
    .locals 0

    .line 67216
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y0;->A00()V

    .line 67217
    return-void
.end method

.method public final AAb()V
    .locals 0

    .line 67218
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y0;->A00()V

    .line 67219
    return-void
.end method
