.class Lcom/yandex/metrica/impl/ob/Pf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Pf;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Of;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Pf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Pf;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Pf$a;->b:Lcom/yandex/metrica/impl/ob/Pf;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Pf$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pf$a;->b:Lcom/yandex/metrica/impl/ob/Pf;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Pf;->a(Lcom/yandex/metrica/impl/ob/Pf;)Lcom/yandex/metrica/impl/ob/Sf;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Pf$a;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/R2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;

    return-void
.end method
