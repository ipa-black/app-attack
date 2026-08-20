.class public final Lcom/yandex/metrica/identifiers/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const-string v0, "providers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/identifiers/impl/h;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;I)V
    .locals 2

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    new-array p2, p2, [Lkotlin/Pair;

    new-instance v0, Lcom/yandex/metrica/identifiers/impl/k;

    invoke-direct {v0}, Lcom/yandex/metrica/identifiers/impl/k;-><init>()V

    const-string v1, "google"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Lcom/yandex/metrica/identifiers/impl/r;

    invoke-direct {v0}, Lcom/yandex/metrica/identifiers/impl/r;-><init>()V

    const-string v1, "huawei"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p2, p1

    new-instance p1, Lcom/yandex/metrica/identifiers/impl/o;

    invoke-direct {p1}, Lcom/yandex/metrica/identifiers/impl/o;-><init>()V

    const-string v0, "yandex"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p2, v0

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/identifiers/impl/h;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/metrica/identifiers/impl/h;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/metrica/identifiers/impl/i;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/yandex/metrica/identifiers/impl/i;->a(Landroid/content/Context;)Lcom/yandex/metrica/identifiers/impl/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/metrica/identifiers/impl/g;->a()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
