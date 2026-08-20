.class Lcom/yandex/metrica/impl/ob/Of$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Of;->setStatisticsSending(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Of;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Of;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Of$r;->b:Lcom/yandex/metrica/impl/ob/Of;

    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/Of$r;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of$r;->b:Lcom/yandex/metrica/impl/ob/Of;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Of;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Of$r;->a:Z

    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->setStatisticsSending(Z)V

    return-void
.end method
