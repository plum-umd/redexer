.class Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mInfo:Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

.field private final mWrapped:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    .line 31
    sget-object p1, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;"

    const-string v1, "onStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    iget-object v6, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v5, p1, p2, v6}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->invokeCallbacks(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;"

    const-string v1, "onStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
