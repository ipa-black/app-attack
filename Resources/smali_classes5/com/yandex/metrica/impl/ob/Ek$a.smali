.class Lcom/yandex/metrica/impl/ob/Ek$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/uiaccessor/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Ek;->a(Lcom/yandex/metrica/impl/ob/mm;)Lcom/yandex/metrica/uiaccessor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/mm;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ek;Lcom/yandex/metrica/impl/ob/mm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ek$a;->a:Lcom/yandex/metrica/impl/ob/mm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fragmentAttached(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ek$a;->a:Lcom/yandex/metrica/impl/ob/mm;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/mm;->b(Ljava/lang/Object;)V

    return-void
.end method
