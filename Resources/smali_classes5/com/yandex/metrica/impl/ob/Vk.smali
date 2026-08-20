.class Lcom/yandex/metrica/impl/ob/Vk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ok;

.field private final b:Lcom/yandex/metrica/impl/ob/Yk;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ok;Lcom/yandex/metrica/impl/ob/Yk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Vk;->a:Lcom/yandex/metrica/impl/ob/Ok;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Vk;->b:Lcom/yandex/metrica/impl/ob/Yk;

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/wl;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vk;->a:Lcom/yandex/metrica/impl/ob/Ok;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Ok;->a(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "yandex:ads:context"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vk;->b:Lcom/yandex/metrica/impl/ob/Yk;

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Yk;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/wl;)Z

    move-result p1

    return p1
.end method
