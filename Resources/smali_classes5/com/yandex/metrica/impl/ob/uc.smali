.class Lcom/yandex/metrica/impl/ob/uc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/vc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/vc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/uc;->a:Lcom/yandex/metrica/impl/ob/vc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uc;->a:Lcom/yandex/metrica/impl/ob/vc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/vc;)Lcom/yandex/metrica/impl/ob/Mc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uc;->a:Lcom/yandex/metrica/impl/ob/vc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/vc;)Lcom/yandex/metrica/impl/ob/Mc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Mc;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uc;->a:Lcom/yandex/metrica/impl/ob/vc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/vc;->b(Lcom/yandex/metrica/impl/ob/vc;)V

    return-void
.end method
