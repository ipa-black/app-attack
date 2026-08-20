.class public final Lcom/appodeal/ads/Native$a;
.super Lcom/appodeal/ads/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/u<",
        "Lcom/appodeal/ads/s2;",
        "Lcom/appodeal/ads/t2;",
        "Lcom/appodeal/ads/Native$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/Native$b;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Native:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/appodeal/ads/u;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/segments/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)I
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/appodeal/ads/Native;->a:I

    :goto_0
    return p1
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)Lcom/appodeal/ads/l;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/t2;

    .line 4
    new-instance v0, Lcom/appodeal/ads/s2;

    invoke-direct {v0, p1, p2, p3}, Lcom/appodeal/ads/s2;-><init>(Lcom/appodeal/ads/t2;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V

    return-object v0
.end method

.method public final a(Lcom/appodeal/ads/s;)Lcom/appodeal/ads/r;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/Native$c;

    .line 5
    new-instance v0, Lcom/appodeal/ads/t2;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/t2;-><init>(Lcom/appodeal/ads/Native$c;)V

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "video_native_autostart"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/appodeal/ads/Native;->e:Z

    :cond_0
    const-string v0, "diu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/appodeal/ads/Native;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;)Z
    .locals 1

    check-cast p1, Lcom/appodeal/ads/t2;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/n2;->b()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final bridge synthetic a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/r;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_1
    check-cast v1, Lcom/appodeal/ads/t2;

    if-eqz v1, :cond_1

    .line 5
    iget-boolean v2, v1, Lcom/appodeal/ads/r;->E:Z

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/appodeal/ads/r;->c()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/Native$c;

    invoke-direct {v0}, Lcom/appodeal/ads/Native$c;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "native_disabled"

    return-object v0
.end method

.method public final s()V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/n2;->c()V

    return-void
.end method
