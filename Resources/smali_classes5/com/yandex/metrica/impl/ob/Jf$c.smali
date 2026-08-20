.class Lcom/yandex/metrica/impl/ob/Jf$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Jf;->a(Lcom/yandex/metrica/impl/ob/pi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/pi;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/Jf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Jf;Ljava/util/List;Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jf$c;->c:Lcom/yandex/metrica/impl/ob/Jf;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Jf$c;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Jf$c;->b:Lcom/yandex/metrica/impl/ob/pi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jf$c;->c:Lcom/yandex/metrica/impl/ob/Jf;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jf$c;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jf$c;->b:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/pi;->C()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Jf;->a(Lcom/yandex/metrica/impl/ob/Jf;Ljava/util/List;J)V

    return-void
.end method
