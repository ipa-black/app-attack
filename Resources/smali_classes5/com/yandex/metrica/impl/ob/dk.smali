.class Lcom/yandex/metrica/impl/ob/dk;
.super Lcom/yandex/metrica/impl/ob/Vk;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ek;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ek;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/Dk;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Dk;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/Vk;-><init>(Lcom/yandex/metrica/impl/ob/Ok;Lcom/yandex/metrica/impl/ob/Yk;)V

    return-void
.end method
