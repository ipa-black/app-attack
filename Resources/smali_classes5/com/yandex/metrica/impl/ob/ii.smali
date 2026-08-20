.class Lcom/yandex/metrica/impl/ob/ii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/f0$a;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Yh;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/hi;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/hi;Lcom/yandex/metrica/impl/ob/Yh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ii;->b:Lcom/yandex/metrica/impl/ob/hi;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ii;->a:Lcom/yandex/metrica/impl/ob/Yh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ii;->b:Lcom/yandex/metrica/impl/ob/hi;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ii;->a:Lcom/yandex/metrica/impl/ob/Yh;

    invoke-virtual {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/os/Bundle;Lcom/yandex/metrica/impl/ob/Yh;)V

    return-void
.end method
