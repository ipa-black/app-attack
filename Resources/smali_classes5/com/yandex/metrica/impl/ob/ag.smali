.class public Lcom/yandex/metrica/impl/ob/ag;
.super Lcom/yandex/metrica/impl/ob/Zf;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Zf;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/ValidationException;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/yandex/metrica/impl/ob/Zf;->b:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast p2, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public sendEventsBuffer()V
    .locals 0

    return-void
.end method
