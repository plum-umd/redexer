.class Landroidx/appcompat/app/AppCompatDelegateImpl$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->doInvalidatePanelMenu(I)V

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/16 v7, 0x6c

    invoke-virtual {v5, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->doInvalidatePanelMenu(I)V

    :cond_1
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-boolean v6, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    iput v6, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/AppCompatDelegateImpl$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
