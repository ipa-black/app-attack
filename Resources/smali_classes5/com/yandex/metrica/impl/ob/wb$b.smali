.class Lcom/yandex/metrica/impl/ob/wb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/qm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/wb;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Gb;)Lcom/yandex/metrica/impl/ob/ub;
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

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Gb;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/wb;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/wb;Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Gb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/wb$b;->c:Lcom/yandex/metrica/impl/ob/wb;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/wb$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/wb$b;->b:Lcom/yandex/metrica/impl/ob/Gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wb$b;->c:Lcom/yandex/metrica/impl/ob/wb;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/wb;->a(Lcom/yandex/metrica/impl/ob/wb;)Lcom/yandex/metrica/impl/ob/vb;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/wb$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/wb$b;->b:Lcom/yandex/metrica/impl/ob/Gb;

    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/vb;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Gb;)Lcom/yandex/metrica/impl/ob/ub;

    move-result-object v0

    return-object v0
.end method
