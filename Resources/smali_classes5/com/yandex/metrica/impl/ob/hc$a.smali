.class Lcom/yandex/metrica/impl/ob/hc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/hc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/hc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hc$a;->a:Lcom/yandex/metrica/impl/ob/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hc$a;->a:Lcom/yandex/metrica/impl/ob/hc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hc;->b()V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hc$a;->a:Lcom/yandex/metrica/impl/ob/hc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/hc;->a(Lcom/yandex/metrica/impl/ob/hc;)V

    return-void
.end method
