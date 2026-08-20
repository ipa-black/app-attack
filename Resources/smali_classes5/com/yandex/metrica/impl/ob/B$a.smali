.class Lcom/yandex/metrica/impl/ob/B$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Kn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Kn<",
        "Lcom/yandex/metrica/impl/ob/vf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/vf;

    .line 2
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/vf;->a:[Lcom/yandex/metrica/impl/ob/vf$a;

    if-eqz p1, :cond_1

    .line 3
    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;)Lcom/yandex/metrica/impl/ob/In;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    const-string p1, "attributes list is empty"

    .line 4
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/In;

    move-result-object p1

    :goto_1
    return-object p1
.end method
