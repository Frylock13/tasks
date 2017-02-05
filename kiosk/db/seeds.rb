Company.delete_all
Product.delete_all

Company.create! [
                    {name: 'Терминальные системы', active: true},
                    {name: 'Киоск сервис', active: true},
                    {name: 'Терминальные системы(not active)', active: false},
                    {name: 'Киоск сервис(not active)', active: false}
                ]

Product.create! [
                    {
                        name: 'Купюроприемник',
                        desc: 'Купюроприемник Creator C100 является сертифицированным устройством ЦБ России устройством для приема наличных денег в устройствах самообслуживания.',
                        company_id: Company.find_by(name: 'Терминальные системы').id,
                        active: true
                    },
                    {
                        name: 'Модем',
                        desc: 'Трехдиапазонный (900/1800/2100 МГц) GSM-модем iRZ TU31 предназначен для передачи данных по сетям сотовой связи 2G и 3G.',
                        company_id: Company.find_by(name: 'Терминальные системы').id,
                        active: true
                    },
                    {
                        name: 'Клавиатура',
                        desc: 'Применение Pinpad SZZT ZT596F: Банкоматы, терминалы самообслуживания, информационные киоски, платежные терминалы',
                        company_id: Company.find_by(name: 'Киоск сервис').id,
                        active: true
                    },
                    {   name: 'Термопринтер',
                        desc: 'Компактный киоск принтер Nippon NP-F209 от японского производителя Nippon Primex. Киоск принтер находится в бюджетном сегменте, поэтому одним из преимуществ модели NP-F209 является низкая цена.',
                        company_id: Company.find_by(name: 'Киоск сервис').id,
                        active: true
                    },
                    {
                        name: 'Купюроприемник',
                        desc: 'Купюроприемник Creator C100 является сертифицированным устройством ЦБ России устройством для приема наличных денег в устройствах самообслуживания.',
                        company_id: Company.find_by(name: 'Терминальные системы(not active)').id,
                        active: true
                    },
                    {
                        name: 'Модем',
                        desc: 'Трехдиапазонный (900/1800/2100 МГц) GSM-модем iRZ TU31 предназначен для передачи данных по сетям сотовой связи 2G и 3G.',
                        company_id: Company.find_by(name: 'Терминальные системы(not active)').id,
                        active: true
                    },
                    {
                        name: 'Клавиатура',
                        desc: 'Применение Pinpad SZZT ZT596F: Банкоматы, терминалы самообслуживания, информационные киоски, платежные терминалы',
                        company_id: Company.find_by(name: 'Киоск сервис(not active)').id,
                        active: true
                    },
                    {
                        name: 'Термопринтер',
                        desc: 'Компактный киоск принтер Nippon NP-F209 от японского производителя Nippon Primex. Киоск принтер находится в бюджетном сегменте, поэтому одним из преимуществ модели NP-F209 является низкая цена.',
                        company_id: Company.find_by(name: 'Киоск сервис(not active)').id,
                        active: true
                    }
                ]