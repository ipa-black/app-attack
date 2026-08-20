.class public Lcom/yandex/metrica/impl/ob/kc;
.super Lcom/yandex/metrica/impl/ob/Pb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/e9;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/G1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/G1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/kc;-><init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/G1;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/G1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Pb;-><init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/G1;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/kc$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/kc$a;-><init>(Lcom/yandex/metrica/impl/ob/kc;)V

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/yd;)Lcom/yandex/metrica/impl/ob/zd;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pb;->c:Lcom/yandex/metrica/impl/ob/G1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/G1;->a(Lcom/yandex/metrica/impl/ob/yd;)Lcom/yandex/metrica/impl/ob/zd;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "network"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "lbs"

    return-object v0
.end method
