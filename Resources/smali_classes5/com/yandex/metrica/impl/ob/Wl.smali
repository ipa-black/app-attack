.class Lcom/yandex/metrica/impl/ob/Wl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Xl;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Xl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Wl;->a:Lcom/yandex/metrica/impl/ob/Xl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Wl;->a:Lcom/yandex/metrica/impl/ob/Xl;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Xl;->a(Lcom/yandex/metrica/impl/ob/Xl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
