.class public Lcom/yandex/metrica/impl/ob/Tm;
.super Lcom/yandex/metrica/impl/ob/Sm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Sm<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Sm;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [B

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    .line 3
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 4
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    move-result v1

    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sm;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v1}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sm;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 10
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->a()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "\"%s\" %s exceeded limit of %d bytes"

    .line 14
    invoke-virtual {v1, v2, p1}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->fw(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object p1, v0

    :cond_1
    return-object p1
.end method
