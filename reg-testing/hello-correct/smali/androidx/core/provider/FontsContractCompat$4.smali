.class final Landroidx/core/provider/FontsContractCompat$4;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat;->requestFont(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$callerThreadHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Landroidx/core/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/Handler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$4;->val$request:Landroidx/core/provider/FontRequest;

    iput-object p3, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/provider/FontsContractCompat$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$request:Landroidx/core/provider/FontRequest;

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroidx/core/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/core/provider/FontsContractCompat$4$4;

    invoke-direct {v6, p0}, Landroidx/core/provider/FontsContractCompat$4$4;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/core/provider/FontsContractCompat$4$3;

    invoke-direct {v6, p0}, Landroidx/core/provider/FontsContractCompat$4$3;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/core/provider/FontsContractCompat$4$2;

    invoke-direct {v6, p0}, Landroidx/core/provider/FontsContractCompat$4$2;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    array-length v6, v5

    if-nez v6, :cond_3

    goto/16 :goto_2

    :cond_3
    array-length v6, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_6

    aget-object v9, v5, v8

    invoke-virtual {v9}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v5

    if-gez v5, :cond_4

    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/core/provider/FontsContractCompat$4$6;

    invoke-direct {v6, p0}, Landroidx/core/provider/FontsContractCompat$4$6;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$7;

    invoke-direct {v7, p0, v5}, Landroidx/core/provider/FontsContractCompat$4$7;-><init>(Landroidx/core/provider/FontsContractCompat$4;I)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    invoke-static {v6, v7, v5}, Landroidx/core/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v5

    if-nez v5, :cond_7

    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/core/provider/FontsContractCompat$4$8;

    invoke-direct {v6, p0}, Landroidx/core/provider/FontsContractCompat$4$8;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$9;

    invoke-direct {v7, p0, v5}, Landroidx/core/provider/FontsContractCompat$4$9;-><init>(Landroidx/core/provider/FontsContractCompat$4;Landroid/graphics/Typeface;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    :goto_2
    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/core/provider/FontsContractCompat$4$5;

    invoke-direct {v6, p0}, Landroidx/core/provider/FontsContractCompat$4$5;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/core/provider/FontsContractCompat$4$1;

    invoke-direct {v6, p0}, Landroidx/core/provider/FontsContractCompat$4$1;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
