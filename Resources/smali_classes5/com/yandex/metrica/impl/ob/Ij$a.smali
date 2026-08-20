.class Lcom/yandex/metrica/impl/ob/Ij$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Ij;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Ed;Lcom/yandex/metrica/impl/ob/yd;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Lj;Lcom/yandex/metrica/impl/ob/G1;Lcom/yandex/metrica/impl/ob/l3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Ij;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ij;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ij$a;->a:Lcom/yandex/metrica/impl/ob/Ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$a;->a:Lcom/yandex/metrica/impl/ob/Ij;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ij$d;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ij$a;->a:Lcom/yandex/metrica/impl/ob/Ij;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Ij$d;-><init>(Lcom/yandex/metrica/impl/ob/Ij;Lcom/yandex/metrica/impl/ob/Ij$a;)V

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Ij;->a(Lcom/yandex/metrica/impl/ob/Ij;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    return-void
.end method
