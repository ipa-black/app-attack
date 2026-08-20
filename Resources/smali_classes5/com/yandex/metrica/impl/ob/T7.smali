.class public Lcom/yandex/metrica/impl/ob/T7;
.super Lcom/yandex/metrica/impl/ob/J7;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/O7;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->w()Lcom/yandex/metrica/impl/ob/e8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e8;->a()Lcom/yandex/metrica/impl/ob/a8;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/T7;-><init>(Lcom/yandex/metrica/impl/ob/O7;Lcom/yandex/metrica/impl/ob/a8;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/O7;Lcom/yandex/metrica/impl/ob/a8;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/J7;-><init>(Lcom/yandex/metrica/impl/ob/O7;Lcom/yandex/metrica/impl/ob/a8;)V

    return-void
.end method


# virtual methods
.method protected a()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/J7;->f()Lcom/yandex/metrica/impl/ob/a8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a8;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method protected b(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/J7;->f()Lcom/yandex/metrica/impl/ob/a8;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/a8;->a(J)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "lbs_dat"

    return-object v0
.end method
