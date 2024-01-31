  <div class="flex justify-around space-x-8">

            <%- include('../views/components/Card.ejs', { title: "Szint definiálása" , LevelTitleBadge: true,
              LevelIconBadge: true, icon_style: "rounded-full" , content: "Jr." , color: "bg-cyan-900/50" }) %>

              <%- include('../views/components/Card.ejs', { title: "Szint definiálása" , LevelTitleBadge: true,
                LevelIconBadge: true, icon_style: "rounded-md" , content: "Ir." , color: "bg-red-900/50" }) %>

                <%- include('../views/components/Card.ejs', {title: "Szint definiálása" , LevelTitleBadge: true,
                  LevelIconBadge: true, icon_style: "" , content: "Sr." , color: "bg-purple-900/50" }) %>
          </div>

                <%- include('../views/components/Footer.ejs') %>
