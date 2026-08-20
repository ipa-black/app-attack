.class public Lcom/yandex/metrica/impl/ob/E0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/F0;->a(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/m2;

    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/e9;

    .line 6
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ja;->j()Lcom/yandex/metrica/impl/ob/S7;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/e9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/F0;->w()Lcom/yandex/metrica/impl/ob/e8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/e8;->b()Lcom/yandex/metrica/impl/ob/a8;

    move-result-object v2

    .line 10
    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/ob/m2;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/a8;)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/D1;->a(Landroid/content/Context;)V

    .line 12
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/ij;

    new-instance v2, Lcom/yandex/metrica/impl/ob/pi$b;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/pi$b;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ij;-><init>(Lcom/yandex/metrica/impl/ob/pi$b;)V

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ej;->b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/bj;)Lcom/yandex/metrica/impl/ob/dj;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dj;->a()Lcom/yandex/metrica/impl/ob/W0;

    return-void
.end method
