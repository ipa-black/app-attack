.class final Lcom/bykv/vk/openvk/preload/geckox/a$1;
.super Ljava/lang/Object;
.source "GeckoClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bykv/vk/openvk/preload/geckox/e/a;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/bykv/vk/openvk/preload/geckox/a;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->b:Lcom/bykv/vk/openvk/preload/geckox/e/a;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/geckox/a$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    .line 238
    const-string v2, "full"

    const-string v3, "patch"

    const-string v4, "all channel update finished"

    const-string v5, "download_gecko_end"

    const-string v6, "start check update..."

    iget-object v7, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->a:Ljava/lang/String;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "gecko-debug-tag"

    invoke-static {v7, v6}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v6, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 1041
    iget-object v6, v6, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 1113
    iget-object v6, v6, Lcom/bykv/vk/openvk/preload/geckox/b;->g:Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    if-eqz v6, :cond_0

    .line 241
    iget-object v6, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 2041
    iget-object v6, v6, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 2113
    iget-object v6, v6, Lcom/bykv/vk/openvk/preload/geckox/b;->g:Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    .line 3015
    iget-object v6, v6, Lcom/bykv/vk/openvk/preload/geckox/a/a/a;->b:Lcom/bykv/vk/openvk/preload/geckox/a/a/b;

    .line 242
    iget-object v9, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 3041
    iget-object v9, v9, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 3113
    iget-object v9, v9, Lcom/bykv/vk/openvk/preload/geckox/b;->g:Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    .line 242
    iget-object v10, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 4041
    iget-object v10, v10, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 4168
    iget-object v10, v10, Lcom/bykv/vk/openvk/preload/geckox/b;->n:Ljava/io/File;

    .line 242
    iget-object v11, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 5041
    iget-object v11, v11, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 5125
    iget-object v11, v11, Lcom/bykv/vk/openvk/preload/geckox/b;->e:Ljava/util/List;

    .line 242
    invoke-virtual {v6, v9, v10, v11}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a(Lcom/bykv/vk/openvk/preload/geckox/a/a/a;Ljava/io/File;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 245
    :goto_0
    :try_start_0
    iget-object v11, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 6041
    iget-object v11, v11, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 245
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 6137
    iput-object v12, v11, Lcom/bykv/vk/openvk/preload/geckox/b;->p:Lorg/json/JSONObject;

    .line 246
    iget-object v11, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->b:Lcom/bykv/vk/openvk/preload/geckox/e/a;

    iget-object v12, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 7041
    iget-object v12, v12, Lcom/bykv/vk/openvk/preload/geckox/a;->d:Ljava/io/File;

    .line 246
    iget-object v13, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 8041
    iget-object v13, v13, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 247
    iget-object v14, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 9041
    iget-object v14, v14, Lcom/bykv/vk/openvk/preload/geckox/a;->a:Lcom/bykv/vk/openvk/preload/geckox/e/b;

    .line 247
    iget-object v15, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->c:Ljava/util/Map;

    iget-object v8, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->d:Ljava/util/Map;

    iget-object v10, v1, Lcom/bykv/vk/openvk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 9065
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object/from16 v17, v4

    .line 10040
    :try_start_1
    new-instance v4, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v18, v5

    .line 9070
    :try_start_2
    const-class v5, Lcom/bykv/vk/openvk/preload/geckox/d/e;

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    .line 10121
    iget-object v5, v13, Lcom/bykv/vk/openvk/preload/geckox/b;->f:Ljava/util/List;

    .line 9071
    filled-new-array {v12, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 11064
    iput-object v5, v4, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    .line 9071
    const-class v5, Lcom/bykv/vk/openvk/preload/geckox/d/e;

    .line 9072
    invoke-virtual {v14, v5}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v5

    .line 12055
    iput-object v5, v4, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 9073
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v4

    .line 9070
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13040
    new-instance v4, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 9076
    const-class v5, Lcom/bykv/vk/openvk/preload/geckox/d/c;

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    filled-new-array {v13, v15, v8, v11, v10}, [Ljava/lang/Object;

    move-result-object v5

    .line 13064
    iput-object v5, v4, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    .line 9076
    new-instance v5, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v8, 0x2

    new-array v10, v8, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 13585
    new-instance v8, Lcom/bykv/vk/openvk/preload/geckox/h/a$6;

    invoke-direct {v8, v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a$6;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)V

    const/4 v15, 0x0

    .line 9078
    aput-object v8, v10, v15

    const-class v8, Lcom/bykv/vk/openvk/preload/geckox/d/c;

    .line 9079
    invoke-virtual {v14, v8}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v8

    const/4 v15, 0x1

    aput-object v8, v10, v15

    invoke-direct {v5, v10}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 14055
    iput-object v5, v4, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 9079
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v4

    .line 9076
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15040
    new-instance v4, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 9082
    const-class v5, Lcom/bykv/vk/openvk/preload/geckox/d/f;

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v4

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 15064
    iput-object v5, v4, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    .line 15335
    new-instance v5, Lcom/bykv/vk/openvk/preload/geckox/h/a$1;

    invoke-direct {v5, v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a$1;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)V

    .line 16055
    iput-object v5, v4, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 9083
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v4

    .line 9082
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9086
    new-instance v4, Lcom/bykv/vk/openvk/preload/b/l$b;

    invoke-direct {v4}, Lcom/bykv/vk/openvk/preload/b/l$b;-><init>()V

    .line 9087
    const-string v5, "branch_zip"

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v5

    .line 16233
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/l$b;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/l$b;-><init>()V

    .line 16234
    invoke-virtual {v8, v3}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v10

    .line 16284
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v20, v6

    .line 17040
    :try_start_3
    new-instance v6, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v6}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v21, v7

    .line 16285
    :try_start_4
    const-class v7, Lcom/bykv/vk/openvk/preload/geckox/d/h;

    invoke-virtual {v6, v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18040
    new-instance v6, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v6}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 16287
    const-class v7, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/c;

    invoke-virtual {v6, v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v6

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v7

    .line 18064
    iput-object v7, v6, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    .line 16287
    new-instance v7, Lcom/bykv/vk/openvk/preload/b/b/b;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v22, v9

    const/4 v1, 0x2

    :try_start_5
    new-array v9, v1, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16288
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v1

    const/16 v16, 0x0

    aput-object v1, v9, v16

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/c;

    .line 16289
    invoke-virtual {v14, v1}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v1

    const/16 v19, 0x1

    aput-object v1, v9, v19

    invoke-direct {v7, v9}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 19055
    iput-object v7, v6, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16289
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 16287
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20040
    new-instance v1, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 16291
    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/b;

    invoke-virtual {v1, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    new-instance v6, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v7, 0x2

    new-array v9, v7, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16292
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v7

    const/16 v16, 0x0

    aput-object v7, v9, v16

    const-class v7, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/b;

    .line 16293
    invoke-virtual {v14, v7}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v7

    const/16 v19, 0x1

    aput-object v7, v9, v19

    invoke-direct {v6, v9}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 20055
    iput-object v6, v1, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16293
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 16291
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21040
    new-instance v1, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 16295
    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/d;

    invoke-virtual {v1, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v6

    .line 21064
    iput-object v6, v1, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    .line 16295
    new-instance v6, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v7, 0x2

    new-array v9, v7, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16296
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v7

    const/16 v16, 0x0

    aput-object v7, v9, v16

    const-class v7, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/d;

    .line 16297
    invoke-virtual {v14, v7}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v7

    const/16 v19, 0x1

    aput-object v7, v9, v19

    invoke-direct {v6, v9}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 22055
    iput-object v6, v1, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16297
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 16295
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23040
    new-instance v1, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 16299
    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/a;

    .line 16300
    invoke-virtual {v1, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    new-instance v6, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v7, 0x2

    new-array v9, v7, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16301
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v7

    const/16 v16, 0x0

    aput-object v7, v9, v16

    const-class v7, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/a;

    .line 16302
    invoke-virtual {v14, v7}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v7

    const/16 v19, 0x1

    aput-object v7, v9, v19

    invoke-direct {v6, v9}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 23055
    iput-object v6, v1, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16302
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 16299
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24040
    new-instance v1, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 16304
    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/f;

    invoke-virtual {v1, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    new-instance v6, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v7, 0x2

    new-array v9, v7, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16305
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v7

    const/16 v16, 0x0

    aput-object v7, v9, v16

    const-class v7, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/f;

    .line 16306
    invoke-virtual {v14, v7}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v7

    const/16 v19, 0x1

    aput-object v7, v9, v19

    invoke-direct {v6, v9}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 24055
    iput-object v6, v1, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16306
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 16304
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25040
    new-instance v1, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 16308
    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/d/b/b/e;

    invoke-virtual {v1, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    new-instance v6, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v7, 0x1

    new-array v9, v7, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16309
    invoke-static {v11}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v7

    const/16 v16, 0x0

    aput-object v7, v9, v16

    invoke-direct {v6, v9}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 25055
    iput-object v6, v1, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 16309
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 16308
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16235
    invoke-virtual {v10, v15}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 16237
    invoke-virtual {v8, v2}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v1

    .line 25253
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26040
    new-instance v7, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 25254
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/g;

    invoke-virtual {v7, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27040
    new-instance v7, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 25256
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/b;

    invoke-virtual {v7, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v7

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 27064
    iput-object v9, v7, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    .line 25256
    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v15, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 25257
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/b;

    .line 25258
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v19, 0x1

    aput-object v10, v15, v19

    invoke-direct {v9, v15}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 28055
    iput-object v9, v7, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 25258
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v7

    .line 25256
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29040
    new-instance v7, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 25260
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/a;

    invoke-virtual {v7, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v7

    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v15, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 25261
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/a;

    .line 25262
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v19, 0x1

    aput-object v10, v15, v19

    invoke-direct {v9, v15}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 29055
    iput-object v9, v7, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 25262
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v7

    .line 25260
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30040
    new-instance v7, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 25264
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/d;

    invoke-virtual {v7, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v7

    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v15, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 25265
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/d;

    .line 25266
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v19, 0x1

    aput-object v10, v15, v19

    invoke-direct {v9, v15}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 30055
    iput-object v9, v7, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 25266
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v7

    .line 25264
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31040
    new-instance v7, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 25268
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/b/a/c;

    invoke-virtual {v7, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v7

    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x1

    new-array v15, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 25269
    invoke-static {v11}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-direct {v9, v15}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 31055
    iput-object v9, v7, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 25269
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v7

    .line 25268
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16238
    invoke-virtual {v1, v6}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 16240
    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/d/b;

    invoke-virtual {v8, v1}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    .line 9088
    invoke-virtual {v5, v1}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v1

    .line 32040
    new-instance v5, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v5}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 9089
    const-class v6, Lcom/bykv/vk/openvk/preload/b/f;

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    invoke-static {v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v6

    .line 32055
    iput-object v6, v5, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 9089
    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 9091
    const-string v1, "branch_single_file"

    invoke-virtual {v4, v1}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v1

    .line 32153
    new-instance v5, Lcom/bykv/vk/openvk/preload/b/l$b;

    invoke-direct {v5}, Lcom/bykv/vk/openvk/preload/b/l$b;-><init>()V

    .line 32155
    invoke-virtual {v5, v3}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v6

    .line 32204
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 32206
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/h;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 32208
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/c;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 34064
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    .line 32208
    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v15, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32209
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/c;

    .line 32210
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v19, 0x1

    aput-object v10, v15, v19

    invoke-direct {v9, v15}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 35055
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32210
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 32208
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 32212
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/b;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v15, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32213
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/b;

    .line 32214
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v19, 0x1

    aput-object v10, v15, v19

    invoke-direct {v9, v15}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 36055
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32214
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 32212
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 32216
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/d;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v9

    .line 37064
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    .line 32216
    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v15, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32217
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/d;

    .line 32218
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v19, 0x1

    aput-object v10, v15, v19

    invoke-direct {v9, v15}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 38055
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32218
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 32216
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 32220
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/a;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v15, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32221
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/a;

    .line 32222
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v19, 0x1

    aput-object v10, v15, v19

    invoke-direct {v9, v15}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 39055
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32222
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 32220
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 32224
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/e;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v15, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32225
    invoke-static {v11}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/a/b/e;

    .line 32226
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/16 v19, 0x1

    aput-object v10, v15, v19

    invoke-direct {v9, v15}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 40055
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 32226
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 32224
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32156
    invoke-virtual {v6, v7}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 32158
    invoke-virtual {v5, v2}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v6

    .line 40174
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 41040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 40176
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/g;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 40178
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/a/a/b;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 42064
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    .line 40178
    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v12, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 40179
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/4 v15, 0x0

    aput-object v10, v12, v15

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/a/a/b;

    .line 40180
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v12, v15

    invoke-direct {v9, v12}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 43055
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 40180
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 40178
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 40182
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/a/a/a;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v12, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 40183
    invoke-static {v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/4 v15, 0x0

    aput-object v10, v12, v15

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/a/a/a;

    .line 40184
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v12, v15

    invoke-direct {v9, v12}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 44055
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 40184
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 40182
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45040
    new-instance v8, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 40186
    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/d/a/a/c;

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v8

    new-instance v9, Lcom/bykv/vk/openvk/preload/b/b/b;

    const/4 v10, 0x2

    new-array v12, v10, [Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 40187
    invoke-static {v11}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/4 v15, 0x0

    aput-object v10, v12, v15

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/d/a/a/c;

    .line 40188
    invoke-virtual {v14, v10}, Lcom/bykv/vk/openvk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v10

    const/4 v14, 0x1

    aput-object v10, v12, v14

    invoke-direct {v9, v12}, Lcom/bykv/vk/openvk/preload/b/b/b;-><init>([Lcom/bykv/vk/openvk/preload/b/b/a;)V

    .line 45055
    iput-object v9, v8, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 40188
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v8

    .line 40186
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32159
    invoke-virtual {v6, v7}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 32161
    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/d/b;

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v5

    .line 9092
    invoke-virtual {v1, v5}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v1

    .line 46040
    new-instance v5, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v5}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 9093
    const-class v6, Lcom/bykv/vk/openvk/preload/b/f;

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v5

    invoke-static {v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v6

    .line 46055
    iput-object v6, v5, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 9093
    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 9095
    const-string v1, "branch_myarchive_file"

    invoke-virtual {v4, v1}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v1

    .line 46317
    new-instance v5, Lcom/bykv/vk/openvk/preload/b/l$b;

    invoke-direct {v5}, Lcom/bykv/vk/openvk/preload/b/l$b;-><init>()V

    .line 46318
    invoke-virtual {v5, v3}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v3

    .line 46331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 46319
    invoke-virtual {v3, v6}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 46321
    invoke-virtual {v5, v2}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v2

    .line 47327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 46321
    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 46323
    const-class v2, Lcom/bykv/vk/openvk/preload/geckox/d/b;

    invoke-virtual {v5, v2}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v2

    .line 9096
    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    move-result-object v1

    .line 48040
    new-instance v2, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 9097
    const-class v3, Lcom/bykv/vk/openvk/preload/b/f;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v2

    invoke-static {v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v3

    .line 48055
    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 9097
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/preload/b/l$a;->a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;

    .line 9099
    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/d/a;

    invoke-virtual {v4, v1}, Lcom/bykv/vk/openvk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49040
    new-instance v1, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    .line 9102
    const-class v3, Lcom/bykv/vk/openvk/preload/geckox/d/i;

    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object v1

    .line 49392
    new-instance v3, Lcom/bykv/vk/openvk/preload/geckox/h/a$2;

    invoke-direct {v3, v11, v13}, Lcom/bykv/vk/openvk/preload/geckox/h/a$2;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)V

    .line 50055
    iput-object v3, v1, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    .line 9102
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 50057
    invoke-static {v2, v1, v1}, Lcom/bykv/vk/openvk/preload/b/c;->a(Ljava/util/List;Lcom/bykv/vk/openvk/preload/b/e;Lcom/bykv/vk/openvk/preload/b/d;)Lcom/bykv/vk/openvk/preload/b/b;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v2, p0

    .line 246
    :try_start_6
    iget-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 248
    invoke-interface {v1, v3}, Lcom/bykv/vk/openvk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 249
    const-string v3, "update finished"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v3, v21

    :try_start_7
    invoke-static {v3, v1}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v20, :cond_1

    .line 266
    invoke-virtual/range {v20 .. v20}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a()V

    .line 268
    :cond_1
    iget-object v1, v2, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 50058
    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50059
    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/geckox/b;->c:Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;

    .line 268
    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 50060
    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50061
    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/b;->p:Lorg/json/JSONObject;

    move-object/from16 v5, v18

    .line 268
    invoke-interface {v1, v5, v4}, Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;->upload(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 269
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    :goto_1
    move-object/from16 v5, v18

    move-object/from16 v3, v21

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_2
    move-object/from16 v5, v18

    move-object/from16 v3, v21

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object/from16 v20, v6

    :goto_3
    move-object v3, v7

    :goto_4
    move-object/from16 v5, v18

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object/from16 v20, v6

    :goto_5
    move-object v3, v7

    :goto_6
    move-object/from16 v5, v18

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v2, v1

    move-object/from16 v17, v4

    :goto_7
    move-object/from16 v20, v6

    move-object v3, v7

    :goto_8
    move-object v1, v0

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object v2, v1

    move-object/from16 v17, v4

    :goto_9
    move-object/from16 v20, v6

    move-object v3, v7

    :goto_a
    move-object v1, v0

    .line 252
    :try_start_8
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 253
    const-string v6, "success"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 254
    const-string v6, "msg"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v6, "code"

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    iget-object v6, v2, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 50062
    iget-object v6, v6, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50063
    iput-object v4, v6, Lcom/bykv/vk/openvk/preload/geckox/b;->p:Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 260
    :catchall_8
    :try_start_9
    const-string v4, "Gecko update failed:"

    invoke-static {v3, v4, v1}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-eqz v20, :cond_2

    .line 266
    invoke-virtual/range {v20 .. v20}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a()V

    .line 268
    :cond_2
    iget-object v1, v2, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 50065
    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50066
    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/geckox/b;->c:Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;

    .line 268
    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 50067
    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50068
    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/b;->p:Lorg/json/JSONObject;

    .line 268
    invoke-interface {v1, v5, v4}, Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;->upload(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 269
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :goto_b
    iget-object v1, v2, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 50074
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50075
    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50083
    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/b;->e:Ljava/util/List;

    .line 50075
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50076
    new-instance v4, Lcom/bykv/vk/openvk/preload/geckox/i/a/a;

    invoke-direct {v4, v3}, Lcom/bykv/vk/openvk/preload/geckox/i/a/a;-><init>(Ljava/util/List;)V

    .line 50078
    :try_start_a
    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c/b;->a()Lcom/bykv/vk/openvk/preload/geckox/c/b;

    move-result-object v3

    .line 50084
    iget-object v3, v3, Lcom/bykv/vk/openvk/preload/geckox/c/b;->a:Lcom/bykv/vk/openvk/preload/a/f;

    .line 50078
    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 50085
    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50093
    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/b;->b:Lcom/bykv/vk/openvk/preload/geckox/i/a;

    if-eqz v4, :cond_3

    .line 50085
    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50094
    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/b;->b:Lcom/bykv/vk/openvk/preload/geckox/i/a;

    .line 50085
    invoke-interface {v4}, Lcom/bykv/vk/openvk/preload/geckox/i/a;->a()Z

    move-result v4

    if-nez v4, :cond_4

    .line 50088
    :cond_3
    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/a;->b:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_4

    .line 50089
    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/geckox/a;->b:Ljava/util/Queue;

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :catchall_9
    :cond_4
    return-void

    :catchall_a
    move-exception v0

    goto/16 :goto_8

    :goto_c
    if-eqz v20, :cond_5

    .line 266
    invoke-virtual/range {v20 .. v20}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a()V

    .line 268
    :cond_5
    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 50069
    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50070
    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/b;->c:Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;

    .line 268
    iget-object v6, v2, Lcom/bykv/vk/openvk/preload/geckox/a$1;->e:Lcom/bykv/vk/openvk/preload/geckox/a;

    .line 50071
    iget-object v6, v6, Lcom/bykv/vk/openvk/preload/geckox/a;->c:Lcom/bykv/vk/openvk/preload/geckox/b;

    .line 50072
    iget-object v6, v6, Lcom/bykv/vk/openvk/preload/geckox/b;->p:Lorg/json/JSONObject;

    .line 268
    invoke-interface {v4, v5, v6}, Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;->upload(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 269
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method
