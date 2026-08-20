.class Lcom/yandex/metrica/impl/ob/vc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/mc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/mc;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/vc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/vc$b;->b:Lcom/yandex/metrica/impl/ob/vc;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/vc$b;->a:Lcom/yandex/metrica/impl/ob/mc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc$b;->b:Lcom/yandex/metrica/impl/ob/vc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/vc;)Lcom/yandex/metrica/impl/ob/Mc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc$b;->b:Lcom/yandex/metrica/impl/ob/vc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/vc;)Lcom/yandex/metrica/impl/ob/Mc;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc$b;->a:Lcom/yandex/metrica/impl/ob/mc;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Mc;->a(Lcom/yandex/metrica/impl/ob/mc;)V

    :cond_0
    return-void
.end method
