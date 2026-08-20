.class Lcom/yandex/metrica/impl/ob/hk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/dk;

.field private final b:Lcom/yandex/metrica/impl/ob/bk;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/bk;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/bk;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/hk;-><init>(Lcom/yandex/metrica/impl/ob/dk;Lcom/yandex/metrica/impl/ob/bk;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/dk;Lcom/yandex/metrica/impl/ob/bk;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hk;->a:Lcom/yandex/metrica/impl/ob/dk;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hk;->b:Lcom/yandex/metrica/impl/ob/bk;

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/fl;)Lcom/yandex/metrica/impl/ob/Wk;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->b:Lcom/yandex/metrica/impl/ob/Wk;

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p2, Lcom/yandex/metrica/impl/ob/fl;->a:Z

    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->d:Lcom/yandex/metrica/impl/ob/Wk;

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    if-nez v0, :cond_2

    .line 7
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->c:Lcom/yandex/metrica/impl/ob/Wk;

    return-object p1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hk;->a:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/Vk;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/wl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->e:Lcom/yandex/metrica/impl/ob/Wk;

    return-object p1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hk;->b:Lcom/yandex/metrica/impl/ob/bk;

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Vk;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/wl;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->f:Lcom/yandex/metrica/impl/ob/Wk;

    return-object p1

    .line 15
    :cond_4
    sget-object p1, Lcom/yandex/metrica/impl/ob/Wk;->a:Lcom/yandex/metrica/impl/ob/Wk;

    return-object p1
.end method
