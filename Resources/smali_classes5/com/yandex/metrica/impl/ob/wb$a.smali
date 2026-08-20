.class Lcom/yandex/metrica/impl/ob/wb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/qm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/wb;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/qm<",
        "Lcom/yandex/metrica/impl/ob/ub;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/wb;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/wb;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/wb$a;->b:Lcom/yandex/metrica/impl/ob/wb;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/wb$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/wb$a;->b()Lcom/yandex/metrica/impl/ob/ub;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/ub;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wb$a;->b:Lcom/yandex/metrica/impl/ob/wb;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/wb;->a(Lcom/yandex/metrica/impl/ob/wb;)Lcom/yandex/metrica/impl/ob/vb;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/wb$a;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/vb;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ub;

    move-result-object v0

    return-object v0
.end method
