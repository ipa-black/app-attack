.class Lcom/yandex/metrica/impl/ob/Uf$A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Uf;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Uf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Uf;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Uf$A;->b:Lcom/yandex/metrica/impl/ob/Uf;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Uf$A;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf$A;->b:Lcom/yandex/metrica/impl/ob/Uf;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Uf;->b(Lcom/yandex/metrica/impl/ob/Uf;)Lcom/yandex/metrica/impl/ob/o2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Uf$A;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Uf$A;->b:Lcom/yandex/metrica/impl/ob/Uf;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Uf;->a(Lcom/yandex/metrica/impl/ob/Uf;)Lcom/yandex/metrica/impl/ob/K0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/o2;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/K0;)V

    return-void
.end method
