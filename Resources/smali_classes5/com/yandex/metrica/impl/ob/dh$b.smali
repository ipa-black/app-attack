.class Lcom/yandex/metrica/impl/ob/dh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/coreutils/services/ActivationBarrier$IActivationBarrierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/dh;-><init>(Lcom/yandex/metrica/impl/ob/bh;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/coreutils/services/ActivationBarrier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dh$b;->a:Lcom/yandex/metrica/impl/ob/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWaitFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dh$b;->a:Lcom/yandex/metrica/impl/ob/dh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/dh;->b(Lcom/yandex/metrica/impl/ob/dh;Z)Z

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dh$b;->a:Lcom/yandex/metrica/impl/ob/dh;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dh;->b(Lcom/yandex/metrica/impl/ob/dh;)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dh$b;->a:Lcom/yandex/metrica/impl/ob/dh;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/dh;->a(Lcom/yandex/metrica/impl/ob/dh;)Lcom/yandex/metrica/impl/ob/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bh;->a(Lcom/yandex/metrica/impl/ob/ah;)V

    return-void
.end method
