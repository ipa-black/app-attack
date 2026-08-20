.class final Lcom/yandex/metrica/impl/ob/Tf$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Tf;->a(Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Tf;

.field final synthetic b:Lcom/yandex/metrica/plugins/PluginErrorDetails;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Tf;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Tf$c;->a:Lcom/yandex/metrica/impl/ob/Tf;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Tf$c;->b:Lcom/yandex/metrica/plugins/PluginErrorDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Tf$c;->a:Lcom/yandex/metrica/impl/ob/Tf;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tf;->a(Lcom/yandex/metrica/impl/ob/Tf;)Lcom/yandex/metrica/impl/ob/K0;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/IReporter;->getPluginExtension()Lcom/yandex/metrica/plugins/IPluginReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Tf$c;->b:Lcom/yandex/metrica/plugins/PluginErrorDetails;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/plugins/IPluginReporter;->reportUnhandledException(Lcom/yandex/metrica/plugins/PluginErrorDetails;)V

    return-void
.end method
