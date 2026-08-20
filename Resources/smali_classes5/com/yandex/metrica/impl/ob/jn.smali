.class public Lcom/yandex/metrica/impl/ob/jn;
.super Lcom/yandex/metrica/impl/ob/in;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/in<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/kn;

    invoke-direct {v0, p2}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/jn;-><init>(ILcom/yandex/metrica/impl/ob/kn;)V

    return-void
.end method

.method public constructor <init>(ILcom/yandex/metrica/impl/ob/kn;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/in;-><init>(ILcom/yandex/metrica/impl/ob/hn;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method
