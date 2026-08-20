.class Lcom/yandex/metrica/impl/ob/fa$b$h;
.super Lcom/yandex/metrica/impl/ob/ga;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fa$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/ga<",
        "Lcom/yandex/metrica/impl/ob/Z1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fa$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ga;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/R7;)Lcom/yandex/metrica/core/api/ProtobufStateStorage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/R7;",
            ")",
            "Lcom/yandex/metrica/core/api/ProtobufStateStorage<",
            "Lcom/yandex/metrica/impl/ob/Z1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/yandex/metrica/impl/ob/l9;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/n9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/n9;-><init>()V

    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/T9;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/T9;-><init>()V

    const-string v2, "satellite_clids_info"

    invoke-direct {p1, v2, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/l9;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/R7;Lcom/yandex/metrica/core/api/ProtobufStateSerializer;Lcom/yandex/metrica/core/api/ProtobufConverter;)V

    return-object p1
.end method

.method protected c(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R7;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->n()Lcom/yandex/metrica/impl/ob/R7;

    move-result-object p1

    return-object p1
.end method

.method protected d(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R7;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->o()Lcom/yandex/metrica/impl/ob/R7;

    move-result-object p1

    return-object p1
.end method
