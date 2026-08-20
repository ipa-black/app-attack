.class Lcom/yandex/metrica/impl/ob/z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/nm;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/y7;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/y7;Lcom/yandex/metrica/impl/ob/nm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/z7;->b:Lcom/yandex/metrica/impl/ob/y7;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/z7;->a:Lcom/yandex/metrica/impl/ob/nm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/z7;->b:Lcom/yandex/metrica/impl/ob/y7;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z7;->a:Lcom/yandex/metrica/impl/ob/nm;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/y7;->a(Lcom/yandex/metrica/impl/ob/nm;)V

    return-void
.end method
