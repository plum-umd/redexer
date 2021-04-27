.class Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BundleCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatBaseImpl"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 12

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;"

    const-string v1, "getBinder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v5, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    const/4 v6, 0x0

    const-string v7, "BundleCompatBaseImpl"

    const/4 v8, 0x1

    if-nez v5, :cond_0

    :try_start_0
    const-class v5, Landroid/os/Bundle;

    const-string v9, "getIBinder"

    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const/4 v1, 0x6

    aput-object v10, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getMethod"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getMethod"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    sput-object v5, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    sget-object v5, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "setAccessible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "setAccessible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v9, "Failed to retrieve getIBinder method"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "i"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "i"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sput-boolean v8, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    :cond_0
    sget-object v5, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    :try_start_4
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const/4 v1, 0x6

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {v5, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_6
    check-cast p0, Landroid/os/IBinder;
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;"

    const-string v1, "getBinder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :catch_1
    move-exception p0

    goto/16 :goto_1

    :catch_2
    move-exception p0

    goto/16 :goto_1

    :catch_3
    move-exception p0

    :goto_1
    const-string p1, "Failed to invoke getIBinder via reflection"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p0, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "i"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "i"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v9, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;"

    const-string v1, "getBinder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v9
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 13

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;"

    const-string v1, "putBinder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v5, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    const/4 v6, 0x0

    const-string v7, "BundleCompatBaseImpl"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v5, :cond_0

    :try_start_0
    const-class v5, Landroid/os/Bundle;

    const-string v10, "putIBinder"

    new-array v11, v8, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v6

    const-class v12, Landroid/os/IBinder;

    aput-object v12, v11, v9
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v10, v2, v1

    const/4 v1, 0x6

    aput-object v11, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getMethod"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getMethod"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    sput-object v5, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    sget-object v5, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "setAccessible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "setAccessible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v10, "Failed to retrieve putIBinder method"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v10, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "i"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "i"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sput-boolean v9, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    :cond_0
    sget-object v5, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    :try_start_4
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    aput-object p2, v8, v9
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const/4 v1, 0x6

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {v5, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_1
    move-exception p0

    goto/16 :goto_1

    :catch_2
    move-exception p0

    goto/16 :goto_1

    :catch_3
    move-exception p0

    :goto_1
    const-string p1, "Failed to invoke putIBinder via reflection"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p0, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "i"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "i"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    sput-object p0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    :cond_1
    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;"

    const-string v1, "putBinder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
