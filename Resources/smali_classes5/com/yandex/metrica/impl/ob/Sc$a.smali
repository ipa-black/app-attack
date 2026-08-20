.class Lcom/yandex/metrica/impl/ob/Sc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/coreutils/services/ActivationBarrier$IActivationBarrierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Sc;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/fd;Lcom/yandex/metrica/coreutils/services/ActivationBarrier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Sc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Sc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sc$a;->a:Lcom/yandex/metrica/impl/ob/Sc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWaitFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc$a;->a:Lcom/yandex/metrica/impl/ob/Sc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Sc;->a(Lcom/yandex/metrica/impl/ob/Sc;Z)Z

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc$a;->a:Lcom/yandex/metrica/impl/ob/Sc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Sc;->a(Lcom/yandex/metrica/impl/ob/Sc;)V

    return-void
.end method
