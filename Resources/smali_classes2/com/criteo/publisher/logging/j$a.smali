.class public final Lcom/criteo/publisher/logging/j$a;
.super Lcom/criteo/publisher/x;
.source "RemoteHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/logging/j;->a(Ljava/lang/String;Lcom/criteo/publisher/logging/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/criteo/publisher/logging/RemoteLogRecords;

.field final synthetic d:Lcom/criteo/publisher/logging/j;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/logging/RemoteLogRecords;Lcom/criteo/publisher/logging/j;)V
    .locals 0

    iput-object p1, p0, Lcom/criteo/publisher/logging/j$a;->c:Lcom/criteo/publisher/logging/RemoteLogRecords;

    iput-object p2, p0, Lcom/criteo/publisher/logging/j$a;->d:Lcom/criteo/publisher/logging/j;

    .line 46
    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/criteo/publisher/logging/j$a;->d:Lcom/criteo/publisher/logging/j;

    invoke-static {v0}, Lcom/criteo/publisher/logging/j;->a(Lcom/criteo/publisher/logging/j;)Lcom/criteo/publisher/f0/k;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/logging/j$a;->c:Lcom/criteo/publisher/logging/RemoteLogRecords;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/f0/k;->a(Ljava/lang/Object;)Z

    return-void
.end method
