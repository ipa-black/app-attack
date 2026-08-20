.class Lcom/yandex/metrica/impl/ob/ul$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ul;-><init>(Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/El;Lcom/yandex/metrica/impl/ob/Bl;Lcom/yandex/metrica/impl/ob/zk;Lcom/yandex/metrica/impl/ob/Xk;Lcom/yandex/metrica/impl/ob/Sk;Lcom/yandex/metrica/impl/ob/mk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/mm<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/ul;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ul;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ul$a;->a:Lcom/yandex/metrica/impl/ob/ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/app/Activity;

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ul$a;->a:Lcom/yandex/metrica/impl/ob/ul;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ul;->a(Lcom/yandex/metrica/impl/ob/ul;)Lcom/yandex/metrica/impl/ob/Xk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xk;->a(Landroid/app/Activity;)V

    return-void
.end method
