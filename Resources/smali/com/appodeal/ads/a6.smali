.class public abstract Lcom/appodeal/ads/a6;
.super Lcom/appodeal/ads/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdObjectType:",
        "Lcom/appodeal/ads/r5<",
        "TAdRequestType;***>;AdRequestType:",
        "Lcom/appodeal/ads/z5<",
        "TAdObjectType;>;RequestParamsType:",
        "Lcom/appodeal/ads/s<",
        "TRequestParamsType;>;>",
        "Lcom/appodeal/ads/u<",
        "TAdObjectType;TAdRequestType;TRequestParamsType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/b6;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/segments/h;->b()Lcom/appodeal/ads/segments/g;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/appodeal/ads/u;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/segments/g;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V
    .locals 4

    invoke-virtual {p0}, Lcom/appodeal/ads/a6;->x()Lcom/appodeal/ads/x5;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/app/AppState;->Resumed:Lcom/appodeal/ads/utils/app/AppState;

    if-ne p2, v1, :cond_1

    .line 1
    iget-boolean v1, p0, Lcom/appodeal/ads/u;->i:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/appodeal/ads/utils/c;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    .line 5
    sget-object v3, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    if-eq v2, v3, :cond_0

    .line 6
    iget-object v1, v1, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    if-eqz v1, :cond_1

    .line 7
    :cond_0
    new-instance v1, Lcom/appodeal/ads/y5;

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/x5;->b(Landroid/app/Activity;)Lcom/appodeal/ads/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-virtual {v0, p1, v1, p0}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;Lcom/appodeal/ads/u;)Z

    :cond_1
    sget-object v1, Lcom/appodeal/ads/utils/app/AppState;->Destroyed:Lcom/appodeal/ads/utils/app/AppState;

    if-ne p2, v1, :cond_3

    .line 8
    iget-object p2, v0, Lcom/appodeal/ads/x5;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object p2, v0, Lcom/appodeal/ads/x5;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleActivityDestroy"

    invoke-static {p2, v0, p1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p0}, Lcom/appodeal/ads/a6;->x()Lcom/appodeal/ads/x5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v1, "refresh_period"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/appodeal/ads/x5;->b:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/a6;->w()Lcom/appodeal/ads/s;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    return-void
.end method

.method public final t()V
    .locals 5

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/a6;->x()Lcom/appodeal/ads/x5;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    if-eqz v2, :cond_1

    .line 6
    new-instance v3, Lcom/appodeal/ads/y5;

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-virtual {v1, v0, v3, p0}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;Lcom/appodeal/ads/u;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-super {p0}, Lcom/appodeal/ads/u;->t()V

    return-void
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appodeal/ads/u;->u:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract w()Lcom/appodeal/ads/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestParamsType;"
        }
    .end annotation
.end method

.method public abstract x()Lcom/appodeal/ads/x5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/x5<",
            "TAdRequestType;TAdObjectType;>;"
        }
    .end annotation
.end method
