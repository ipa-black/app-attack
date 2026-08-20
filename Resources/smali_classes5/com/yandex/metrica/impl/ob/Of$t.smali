.class Lcom/yandex/metrica/impl/ob/Of$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Of;->a(Lcom/yandex/metrica/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/e;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Of;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Of$t;->b:Lcom/yandex/metrica/impl/ob/Of;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Of$t;->a:Lcom/yandex/metrica/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of$t;->b:Lcom/yandex/metrica/impl/ob/Of;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Of$t;->a:Lcom/yandex/metrica/e;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Of;->a(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/e;)V

    return-void
.end method
