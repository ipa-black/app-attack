.class Lcom/yandex/metrica/impl/ob/m2$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/Pd;

.field private b:Lcom/yandex/metrica/impl/ob/f9;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/Pd;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/Pd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$j;->a:Lcom/yandex/metrica/impl/ob/Pd;

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/f9;

    .line 4
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ja;->p()Lcom/yandex/metrica/impl/ob/S7;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/f9;-><init>(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$j;->b:Lcom/yandex/metrica/impl/ob/f9;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$j;->a:Lcom/yandex/metrica/impl/ob/Pd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Pd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/m2$j;->b:Lcom/yandex/metrica/impl/ob/f9;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/f9;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/f9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 4
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Pd;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
