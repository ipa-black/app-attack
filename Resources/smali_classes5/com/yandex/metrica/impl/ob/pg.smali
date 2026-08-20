.class public final Lcom/yandex/metrica/impl/ob/pg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/vg;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/mg$d;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/mg$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/pg;->a:Lcom/yandex/metrica/impl/ob/mg$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pg;->a:Lcom/yandex/metrica/impl/ob/mg$d;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/mg$d;->a:Lcom/yandex/metrica/impl/ob/mg;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/mg;->b(Lcom/yandex/metrica/impl/ob/mg;)Lcom/yandex/metrica/impl/ob/mg$a;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/mg;->a(Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/ob/dg;Lcom/yandex/metrica/impl/ob/mg$a;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/pg;->a:Lcom/yandex/metrica/impl/ob/mg$d;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mg$d;->a:Lcom/yandex/metrica/impl/ob/mg;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/mg;->b(Lcom/yandex/metrica/impl/ob/mg;)Lcom/yandex/metrica/impl/ob/mg$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/mg;->a(Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/ob/dg;Lcom/yandex/metrica/impl/ob/mg$a;)V

    return-void
.end method
